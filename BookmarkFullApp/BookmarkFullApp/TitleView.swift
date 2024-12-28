//
//  TitleView.swift
//  BookmarkFullApp
//
//  Created by Zhanel Amralina on 7/22/24.
//

import SwiftUI

struct TitleView: View {
    var color: Color
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(color)
            .multilineTextAlignment(.center)
            .padding()
    }
}

#Preview {
    TitleView(color: .white, text: "Save all interesting links in one app")
}

