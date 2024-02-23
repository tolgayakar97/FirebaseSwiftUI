//
//  AuthController.swift
//  FirebaseSwiftUI
//
//  Created by Tolga Yakar on 22.02.2024.
//

import SwiftUI
import FirebaseAuth

class AuthController{
    
    static private var _authController: AuthController?
    
    static func createObject() -> AuthController
    {
        if(_authController == nil)
        {
            _authController = AuthController()
        }
        
        return _authController!
    }
    
    func register(email: String, password: String)
    {
        guard !email.isEmpty, !password.isEmpty else {
            print("Empty email or password!")
            return
        }
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if error != nil {
                    print(error?.localizedDescription)
                }
                else {
                    print(authResult)
                }
        }
    }
    
    func login(email: String, password: String) {
        guard !email.isEmpty, !password.isEmpty else {
            //Login operations
            print("Empty email or password!")
            return
        }
    }
}
