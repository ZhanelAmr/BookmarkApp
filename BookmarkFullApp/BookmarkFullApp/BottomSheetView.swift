//
//  BottomSheetView.swift
//  BookmarkFullApp
//
//  Created by Zhanel Amralina on 7/21/24.
//

import SwiftUI

struct BottomSheetView: View {
    @State private var titleText = ""
    @State private var urlString = ""
    @State private var showAlert = false
    @Binding var isShowButtonSheet: Bool
    @Binding var models:[BookMarkCellModel]
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Spacer()
                Image("x")
                    .padding(.vertical)
                    .onTapGesture {
                        isShowButtonSheet.toggle()
                    }
            }
            TextFieldView(text: $titleText, title: "Title", placeholder: "Bookmark title")
                .padding(.bottom, 16)
            
            TextFieldView(text: $urlString, title: "Link", placeholder: "Link")
                .padding(.bottom, 24)
            
            PrimaryButton(buttonColor: .black, textColor: .white, title: "Save") {
                guard !titleText.isEmpty, !urlString.isEmpty, let url = URL(string: "http://www.\(urlString)") else {
                    
                    showAlert.toggle()
                    isShowButtonSheet.toggle()
                    return
                }
                
                models.append(BookMarkCellModel(title: titleText, url: url))
                isShowButtonSheet.toggle()
            }
            .alert("No Data", isPresented: $showAlert) {}
        }
        .padding()
    }
}

#Preview {
    BottomSheetView(isShowButtonSheet: .constant(true), models: .constant([BookMarkCellModel]()))
}
