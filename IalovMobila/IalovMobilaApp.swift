//
//  IalovMobilaApp.swift
//  IalovMobila
//
//  Created by Secrieru Andrei on 21.09.2022.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth

@main
struct IalovMobilaApp: App {
     var userDefaults = UserDefaults.standard
     var signedBefore = UserDefaults.standard.bool(forKey: "userSignedIn")
    
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LaunchScreen()
        }
    }
}
