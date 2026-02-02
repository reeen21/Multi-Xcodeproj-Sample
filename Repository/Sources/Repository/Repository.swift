import Foundation

public struct User: Identifiable, Sendable {
    public let id: UUID
    public let name: String
    public let email: String

    public init(id: UUID = UUID(), name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
}

public protocol UserRepositoryProtocol: Sendable {
    /// サンプルユーザーを取得
    func fetchUsers() async -> [User]
    
    /// ユーザーを保存
    func saveUser(_ user: User) async -> Bool
}

public final class UserRepository: UserRepositoryProtocol {
    public init() {}

    /// サンプルユーザーを取得
    public func fetchUsers() async -> [User] {
        // シンプルなモックデータを返す
        return [
            User(name: "田中太郎", email: "tanaka@example.com"),
            User(name: "山田花子", email: "yamada@example.com"),
            User(name: "佐藤一郎", email: "sato@example.com")
        ]
    }

    public func saveUser(_ user: User) async -> Bool {
        // 実際の実装ではデータベースやAPIに保存
        print("User saved: \(user.name)")
        return true
    }
}
