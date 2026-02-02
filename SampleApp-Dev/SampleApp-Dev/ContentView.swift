//
//  ContentView.swift
//  SampleApp-Dev
//
//  Created by Ren Takahashi on 2026/02/02.
//

import SwiftUI
import View
import Repository

struct ContentView: View {
    private let repository: UserRepositoryProtocol = UserRepository()
    
    var body: some View {
        UserListView(repository: repository)
    }
}

#Preview {
    ContentView()
}
