//
//  PrimaryButton.swift
//  BookmarkFullApp
//
//  Created by Zhanel Amralina on 7/22/24.
//

import SwiftUI

struct PrimaryButton: View {
    let buttonColor: Color
    let textColor: Color
    let title: String
    var onButtonPressed: () -> Void
    
    var body: some View {   
        Button {
            onButtonPressed()
        } label: {
            Text(title)
                .foregroundColor(textColor)
                .frame(maxWidth: .infinity, minHeight: 50)
                .background(buttonColor)
                .cornerRadius(8)
        }
    }
}

#Preview {
    PrimaryButton(buttonColor: .black, textColor: .white, title: "Save your bookmark", onButtonPressed: {})
}
