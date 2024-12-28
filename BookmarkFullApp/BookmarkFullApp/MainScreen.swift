//
//  MainScreen.swift
//  BookmarkFullApp
//
//  Created by Zhanel Amralina on 7/21/24.
//

import SwiftUI

struct MainScreen: View {
    @State private var isShowButtonSheet = false
    @State var isShoeTitle = true
    @State var models = [BookMarkCellModel]()
    var body: some View {
        VStack {
            if models.isEmpty {
                Spacer()
                TitleView(color: .black, text: "Save your first bookmark")
            } else {
                VStack {
                    ForEach(models) {
                        BookMarkCell(text: $0.title, url: $0.url)
                    }
                }
            }
            Spacer()
            PrimaryButton(buttonColor: .black, textColor: .white, title: "Add bookmark") {
                isShowButtonSheet.toggle()
            }
            .padding(.horizontal)
        }
        .background(Color("BackGround"))
        .sheet(isPresented: $isShowButtonSheet, content: {
            BottomSheetView(isShowButtonSheet: $isShowButtonSheet, models: $models)
                .presentationDetents([.height(300)])
        })
        .navigationTitle(models.isEmpty ? "BookmarkApp" : "List")
    }
}

#Preview {
    MainScreen()
}
