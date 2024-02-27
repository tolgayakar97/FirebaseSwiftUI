//
//  CrudView.swift
//  FirebaseSwiftUI
//
//  Created by Tolga Yakar on 22.02.2024.
//

import SwiftUI

struct CrudView: View {
    
    private var authManager = AuthController.createObject()
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationStack
        {
            Button("SIGN OUT") {
                authManager.signOut()
                isActive.toggle()
            }
            .navigationDestination(isPresented: $isActive) {
                ContentView()
            }
            .bold()
            .frame(maxWidth: .infinity)
            .padding()
            .background(.red)
            .foregroundStyle(.white)
        }
        .padding()
    }
}

#Preview {
    CrudView()
}
