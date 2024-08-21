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
        VStack {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
