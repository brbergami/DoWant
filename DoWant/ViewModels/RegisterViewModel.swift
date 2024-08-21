//
//  RegisterViewModel.swift
//  DoWant
//
//  Created by Bruno Bergami on 18/08/2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMsg: String = ""
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty, !email.isEmpty, !password.isEmpty else {
            errorMsg = "All fields must be filled"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMsg = "Invalid email"
            return false
        }
        
        if password.count < 8 {
            errorMsg = "Password must be at least 8 characters"
            return false
        }
        
        return true
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id,
                           name: capitalizeFirstLetterOf(name: name),
                           email: email
        )
        
        let FSDataBase = Firestore.firestore()
        FSDataBase.collection("users")
            .document(id)
            .setData(newUser.asDictionary()
            )
    }
    
    private func capitalizeFirstLetterOf(name: String) -> String {
        return name
            .split(separator: " ")
            .map { $0.prefix(1).uppercased() + $0.dropFirst() }
            .joined(separator: " ")
    }
}
