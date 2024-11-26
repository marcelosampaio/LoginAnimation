//
//  ContentView.swift
//  LoginAnimation
//
//  Created by Marcelo Sampaio on 26/11/24.
//

import SwiftUI

struct ContentView: View {
    @FocusState var isActive
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack(spacing: 45) {
            InfoTF(title: "Email", text: $email)
            
            InfoTF(title: "Password", text: $password)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
