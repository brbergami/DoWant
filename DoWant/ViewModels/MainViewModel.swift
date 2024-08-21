//
//  MainViewModel.swift
//  DoWant
//
//  Created by Bruno Bergami on 18/08/2024.
//

import Foundation
import FirebaseAuth

class MainViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
//    guard isSignedIn else {
//        return
//    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
