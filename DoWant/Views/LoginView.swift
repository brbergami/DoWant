//
//  LoginView.swift
//  DoWant
//
//  Created by Bruno Bergami on 18/08/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(subtitle: "Login", position: "left", backgroundAngle: -15)
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .listRowSeparator(.hidden)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .listRowSeparator(.hidden)
                    SimpleButton(text: "Login",
                                 color: Color(red: 187/255,
                                              green: 223/255,
                                              blue: 0/255),
                                 callback: viewModel.login
                    )
                }
                .scrollContentBackground(.hidden)
                .offset(y: -70)
                
                NavigationLink("Create an account",
                               destination: RegisterView())
//                    .offset(y: -10)
                    .padding(.bottom, 20)
                
                Text("Made with love by Bruno Bergami")
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .font(.system(size: 12))
                    .bold()
                    .padding(.bottom, 20)
            }
        }
    }
}

#Preview {
    LoginView()
}
