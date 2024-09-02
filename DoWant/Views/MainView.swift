//
//  MainView.swift
//  DoWant
//
//  Created by Bruno Bergami on 17/08/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            BoardView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Account", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
