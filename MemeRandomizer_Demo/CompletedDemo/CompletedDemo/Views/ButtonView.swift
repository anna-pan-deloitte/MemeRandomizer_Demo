//
//  ButtonView.swift
//  CompletedDemo
//
//  Created by Pan, Anna on 2022-03-10.
//

import SwiftUI

struct ButtonView: View {
    //MARK: - Properties
    var text: String
    
    //MARK: - Body
    var body: some View {
        Capsule()
            .fill(Color("LightBlue"))
            .shadow(color: .black.opacity(0.2), radius: 8, x: 3, y: 3)
            .frame(height: 80)
            .overlay(
                Label(
                    text,
                    systemImage: "arrow.triangle.2.circlepath"
                )
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
            )
    }
}

//MARK: - Preview
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "Change Meme")
            .previewLayout(.sizeThatFits)
    }
}

