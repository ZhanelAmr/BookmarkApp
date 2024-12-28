//
//  ContentView.swift
//  BookmarkFullApp
//
//  Created by Zhanel Amralina on 7/21/24.
//

import SwiftUI

struct ContentView: View {
    @State var isMoveToMainScreen = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                NavigationLink(isActive: $isMoveToMainScreen) {
                    MainScreen()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    EmptyView()
                }
                
                Image("Image")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                TitleView(color: .white, text: "Save all interesting links in one app")
                    .padding()
                
                PrimaryButton(buttonColor: .white, textColor: .black, title: "Let's start collecting") {
                    isMoveToMainScreen = true
                }
                .padding(.horizontal)
            }
            .background(.black)
        }
    }
}

#Preview {
    ContentView()
}
