//
//  LogInView.swift
//  FirebaseSwiftUI
//
//  Created by Tolga Yakar on 22.02.2024.
//

import SwiftUI

struct LogInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @FocusState private var emailFocus: Bool
    @FocusState private var passwordFocus: Bool
    
    var authController = AuthController.createObject()
    
    var body: some View {
        Form
        {
            TextField("E-MAIL", text: $email)
                .focused($emailFocus)
            
            TextField("PASSWORD", text: $password)
                .focused($passwordFocus)
            
            Button(action: {
                //Log in operations
            }, label: {
                Text("LOG IN")
            })
        }
    }
}

#Preview {
    LogInView()
}
