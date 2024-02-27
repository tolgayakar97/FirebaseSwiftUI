//
//  SignInView.swift
//  FirebaseSwiftUI
//
//  Created by Tolga Yakar on 22.02.2024.
//

import SwiftUI
import FirebaseAuth

struct SignInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @FocusState private var emailFocus: Bool
    @FocusState private var passwordFocus: Bool
    
    @State private var isPresented: Bool = false
    
    var authController = AuthController.createObject()
    
    var body: some View {
        NavigationStack
        {
            VStack
            {
                TextField("E-MAIL", text: $email)
                    .focused($emailFocus)
                    .padding()
                    .border(.gray)
                
                TextField("PASSWORD", text: $password)
                    .focused($passwordFocus)
                    .padding()
                    .border(.gray)
                
                
                Button(action: {
                    authController.register(email: email, password: password)
                    isPresented.toggle()
                }, label: {
                    Text("REGISTER")
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .foregroundStyle(.white)
                        .bold()
                        .background(.blue)
                        .buttonStyle(.automatic)
                })
                .navigationDestination(isPresented: $isPresented) {
                    CrudView()
                }
            }
            .navigationTitle("SIGN IN")
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    SignInView()
}
