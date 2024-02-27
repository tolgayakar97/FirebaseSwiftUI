//
//  LogInView.swift
//  FirebaseSwiftUI
//
//  Created by Tolga Yakar on 22.02.2024.
//

import SwiftUI
import FirebaseAuth

struct LogInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @FocusState private var emailFocus: Bool
    @FocusState private var passwordFocus: Bool
    
    @State private var isActive: Bool = false
    
    var authController = AuthController.createObject()
    
    var body: some View {
        NavigationStack{
            VStack
            {
                TextField("E-MAIL", text: $email)
                    .focused($emailFocus)
                    .focused($emailFocus)
                    .padding()
                    .border(.gray)
                
                TextField("PASSWORD", text: $password)
                    .focused($passwordFocus)
                    .focused($emailFocus)
                    .padding()
                    .border(.gray)
                
                
                
                Button("LOG IN") {
                    authController.login(email: email, password: password)
                    isActive.toggle()
                }
                .frame(maxWidth: .infinity, maxHeight: 50)
                .foregroundStyle(.white)
                .bold()
                .background(.blue)
                .buttonStyle(.automatic)
                .navigationDestination(isPresented: $isActive) {
                    CrudView()
                }
                
            }
            .ignoresSafeArea()
            .navigationTitle("LOG IN")
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    LogInView()
}
