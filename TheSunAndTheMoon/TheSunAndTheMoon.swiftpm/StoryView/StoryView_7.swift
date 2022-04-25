//
//  SwiftUIView.swift
//  
//
//  Created by 이창형 on 2022/04/22.
//

import SwiftUI

struct StoryView_7: View {
    @State private var touch = false
    var body: some View{
        ZStack{
            Color.black
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
        VStack(){
            Image("Story_7")
                .resizable()
                .scaledToFit()
            
            MainText(text: "When the children found out that it was a tiger, not a mother, they ran through the back door and climbed up the tree, but the tiger tried to cut down the tree with an ax.\n\nAt that moment, the children pray in the sky.\n\n'God, if you want to save us, give us a new rope, or else give us a rotten rope'.")
        
            
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
            StoryView_8()
        }
        }
}
}
