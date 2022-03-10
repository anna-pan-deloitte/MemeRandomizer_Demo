//
//  ContentView.swift
//  CompletedDemo
//
//  Created by Pan, Anna on 2022-03-10.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @State private var isBackgroundPink: Bool = true
    
    //MARK: - Body
    var body: some View {
        ZStack {
            //BACKGROUND COLOR
            Color(isBackgroundPink ? "LightPink" : "LightPurple")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack {
                //MEME VIEW
                MemeView()
                
                //CHANGE BACKGROUND BUTTON
                Button {
                    isBackgroundPink.toggle()
                } label: {
                    ButtonView(text: "Change Background")
                        .padding(.horizontal, 20)
                }
            }//: VStack
        }//: ZStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
