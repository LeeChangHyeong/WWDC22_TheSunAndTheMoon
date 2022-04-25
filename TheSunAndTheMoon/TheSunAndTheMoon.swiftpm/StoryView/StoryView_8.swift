//
//  SwiftUIView.swift
//  
//
//  Created by 이창형 on 2022/04/22.
//

import SwiftUI

struct StoryView_8: View {
    @State private var touch = false
    var body: some View{
        ZStack{
            Color.black
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
        VStack(){
            Image("Story_8")
                .resizable()
                .scaledToFit()
            
            MainText(text: "Then, two rope came down from the sky, and the children picked one rope and started to go up to the sky.")
            
            Button(action: {
                self.touch.toggle()
                PlaySoundEffect(key: "TurnPage")
            }) {
                Text("next")
                    .foregroundColor(Color.white)
                    .font(.system(size: 20))
                    .padding()
            }
            .background(Color.blue)
            .cornerRadius(20)
            .padding()
        }
        .fullScreenCover(isPresented: $touch){
            StoryView_9()
        }
        }
    }
}



