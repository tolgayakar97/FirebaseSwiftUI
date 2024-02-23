//
//  ContentView.swift
//  FirebaseSwiftUI
//
//  Created by Tolga Yakar on 22.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack
            {
                HStack
                {
                    NavigationLink {
                        SignInView()
                    } label: {
                        Text("SIGN IN")
                            .frame(width:100, height: 75)
                            .foregroundColor(.white)
                            .bold()
                            .background(.red)
                            .padding()
                    }
                    .padding()
                    
                    NavigationLink {
                        SignInView()
                    } label: {
                        Text("LOG IN")
                            .frame(width:100, height: 75)
                            .foregroundColor(.white)
                            .bold()
                            .background(.blue)
                            .padding()
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
