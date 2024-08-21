//
//  LoginViewModel.swift
//  DoWant
//
//  Created by Bruno Bergami on 18/08/2024.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
                !password.isEmpty
        else {
            errorMessage = "You need to complete all the fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Invalid email"
            return false
        }
        
        guard password.count >= 8 else {
            errorMessage = "Password is too short"
            return false
        }
        
        return true
    }
}
