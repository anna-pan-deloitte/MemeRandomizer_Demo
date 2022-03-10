//
//  MemeView.swift
//  CompletedDemo
//
//  Created by Pan, Anna on 2022-03-10.
//

import SwiftUI

struct MemeView: View {
    //MARK: - Properties
    private var memes: [String] = ["meme-1", "meme-2", "meme-3", "meme-4", "meme-5", "meme-6"]
    @State private var meme: String = "meme-1"
    
    //MARK: - Body
    var body: some View {
        //VERTICAL STACK
        VStack {
            
            //MEME
            Image(meme)
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 20)
            
            //BUTTON
            Button {
                meme = memes.randomElement() ?? "meme-1"
            } label: {
                ButtonView(text: "Randomize Meme")
                    .padding(20)
            }
        }//: VStack
    }
}

//MARK: - Preview
struct MemeView_Previews: PreviewProvider {
    static var previews: some View {
        MemeView()
            .previewLayout(.sizeThatFits)
    }
}
