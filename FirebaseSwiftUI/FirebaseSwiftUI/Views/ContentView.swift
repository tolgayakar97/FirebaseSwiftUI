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
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .foregroundColor(.white)
                            .bold()
                            .background(.red)
                    }

                    NavigationLink {
                        SignInView()
                    } label: {
                        Text("LOG IN")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .foregroundColor(.white)
                            .bold()
                            .background(.blue)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
