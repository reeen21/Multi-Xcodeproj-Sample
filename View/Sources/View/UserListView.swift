import SwiftUI
import Repository

public struct UserListView: View {
    @State private var users: [User] = []
    @State private var isLoading = false

    private let repository: UserRepositoryProtocol

    public init(repository: UserRepositoryProtocol) {
        self.repository = repository
    }

    public var body: some View {
        NavigationStack {
            Group {
                if isLoading {
                    ProgressView("読み込み中...")
                } else if users.isEmpty {
                    ContentUnavailableView(
                        "ユーザーがいません",
                        systemImage: "person.slash"
                    )
                } else {
                    List(users) { user in
                        UserRow(user: user)
                    }
                }
            }
            .navigationTitle("ユーザー一覧")
            .task {
                await loadUsers()
            }
            .refreshable {
                await loadUsers()
            }
        }
    }

    private func loadUsers() async {
        isLoading = true
        users = await repository.fetchUsers()
        isLoading = false
    }
}

struct UserRow: View {
    let user: User

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(user.name)
                .font(.headline)
            Text(user.email)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding(.vertical, 4)
    }
}
