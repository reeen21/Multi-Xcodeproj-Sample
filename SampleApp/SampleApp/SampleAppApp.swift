import SwiftUI
import SampleAppUI

@main
struct SampleAppApp: App {
    var body: some Scene {
        WindowGroup {
            UserListView()
                .overlay(alignment: .topTrailing) {
                    Text("PROD")
                        .font(.caption2)
                }
        }
    }
}
