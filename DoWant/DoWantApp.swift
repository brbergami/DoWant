//
//  DoWantApp.swift
//  DoWant
//
//  Created by Bruno Bergami on 17/08/2024.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct DoWantApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate // Integrate Firebase
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
