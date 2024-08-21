//
//  RegisterView.swift
//  DoWant
//
//  Created by Bruno Bergami on 18/08/2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        VStack {
            HeaderView(subtitle: "Register",
                       position: "right",
                       backgroundAngle: 15
            )
            
            Form {
                TextField("Full name",
                          text: $viewModel.name
                )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .listRowSeparator(.hidden)
                    .autocapitalization(.none)
                TextField("Email",
                          text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .listRowSeparator(.hidden)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password",
                            text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .listRowSeparator(.hidden)
                SimpleButton(text: "Register",
                             color: Color(red: 187/255,
                                          green: 223/255,
                                          blue: 0/255),
                             callback: viewModel.register
                )
            }
            .scrollContentBackground(.hidden)
            .offset(y: -80)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
