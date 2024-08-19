//
//  LoginView.swift
//  DoWant
//
//  Created by Bruno Bergami on 18/08/2024.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView()
                
                Form {
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .listRowSeparator(.hidden)
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .listRowSeparator(.hidden)
                    Button {
                        // Login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(
                                    red: 187/255,
                                    green: 223/255,
                                    blue: 0/255
                                ))
                            Text("Login")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                }
                .scrollContentBackground(.hidden)
                .offset(y: -80)
                
                VStack {
                    NavigationLink("Create an account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 20)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
