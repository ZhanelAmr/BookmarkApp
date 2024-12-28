//
//  BookMarkCell.swift
//  BookmarkFullApp
//
//  Created by Zhanel Amralina on 7/21/24.
//

import SwiftUI

struct BookMarkCell: View {
    let text: String
    let url: URL
    
    var body: some View {
        VStack {
            HStack {
                Text(text)
                    .font(.system(size: 17))
                Spacer()
                Image("Vector")
                    .onTapGesture {
                        UIApplication.shared.open(url)
                    }
            }
            .padding(.horizontal)
            .padding(.vertical, 11)
            Divider()
                .padding(.leading)
        }
    }
}

#Preview {
    BookMarkCell(text: "Google", url: URL(string: "www.google.com")!)
}
