//
//  TextFieldView.swift
//  BookmarkFullApp
//
//  Created by Zhanel Amralina on 7/22/24.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                Spacer()
            }
            
            TextField(placeholder, text: $text)
                .padding(.horizontal)
                .padding(.vertical, 12)
                .background(.black.opacity(0.2))
                .cornerRadius(12)
            
        }
        
    }
}

#Preview {
    TextFieldView(text: .constant("Bookmark title"), title: "Title", placeholder: "")
}
