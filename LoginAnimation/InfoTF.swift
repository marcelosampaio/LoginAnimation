//
//  InfoTF.swift
//  LoginAnimation
//
//  Created by Marcelo Sampaio on 26/11/24.
//
import SwiftUI

struct InfoTF: View {
    var title: String
    @Binding var text: String
    @FocusState var isActive
    
    var body: some View {
        ZStack(alignment: .leading) {
            TextField("", text: $text)
                .padding(.leading)
                .frame(height: 55)
                .focused($isActive)
                .background(.gray.opacity(0.3), in: .rect(cornerRadius: 16))
            
            Text(title)
                .padding(.horizontal)
                .offset(y: (isActive || !text.isEmpty) ? -50 : 0)
                .foregroundStyle(isActive ? .white : .secondary)
                .animation(.spring , value: isActive)
        }
    }
}
