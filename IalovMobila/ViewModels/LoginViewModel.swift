//
//  LoginViewModel.swift
//  IalovMobila
//
//  Created by Secrieru Andrei on 22.09.2022.
//

import Foundation
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore


class LoginViewModel: ObservableObject {
    @Published var showLoginForm = false
    @Published var showRegisterForm = false
    @Published var showMainMenu = false
    @Published var email = ""
    @Published var password = ""
    @Published var passConfirmation = ""
    @Published var errorHandler: String? = nil
    let store = Firestore.firestore()
    
     
 
    
    func signUp(withEmail: String, withPassword: String, withPassConfirmation: String) {
        if withEmail != "" && withPassword != "" && withPassConfirmation != "" {
            if withPassword == withPassConfirmation {
                Auth.auth().createUser(withEmail: withEmail, password: withPassword) { (result, error) in
                    if error != nil {
                        self.errorHandler = error?.localizedDescription
                    } else {
                        UserDefaults.standard.set(true, forKey: "isLogedIn")
                        NotificationCenter.default.post(name: Notification.Name("isLogedIn"), object: nil)
                    }
                }
            }
            else {
                self.errorHandler = "Passwords dismatch"
            }
        } else {
            self.errorHandler = "Please fill all the fields"
        }
    }
    
    func signIn(withEmail: String, withPassword: String) {
        if withEmail != "" && withPassword != ""  {
            Auth.auth().signIn(withEmail: withEmail, password: withPassword) { (result, error) in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                    self.errorHandler = error?.localizedDescription
                } else {
                    print("Succes")
                    UserDefaults.standard.set(true, forKey: "isLogedIn")
                    NotificationCenter.default.post(name: Notification.Name("isLogedIn"), object: nil)
                }
            }
        } else {
            errorHandler = "Please fill all the fields"
        }
    }
    
    func signOut () {
        do {
            try Auth.auth().signOut()
            UserDefaults.standard.set(false, forKey: "isLogedIn")
            NotificationCenter.default.post(name: Notification.Name("isLogedIn"), object: nil)
            print("singOut Succes")
        } catch  {
            print("Error")
        }
    }
    
    func resetPassword (withEmail: String) {
    //MARK: future
    }
    
    func Clear() {
        self.email = ""
        self.password = ""
        self.passConfirmation = ""
        self.errorHandler = nil
    }
}
