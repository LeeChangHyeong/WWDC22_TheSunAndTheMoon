//
//  File.swift
//  TheSunAndTheMoon
//
//  Created by 이창형 on 2022/04/20.
//

import Foundation
import SwiftUI

struct StoryView_5: View{
    @State private var touch = false
    var body: some View{
        ZStack{
            Color.black
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
        VStack(){
            Image("Story_5")
                .resizable()
                .scaledToFit()
            
            MainText(text: "The hungry tiger asks to open the door in mother's costume.\n\nBut the children sensed a strange feeling and did not open the door and said 'Put the hand in the door'")
         
            
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
                StoryView_6()
            }
        }
    }
}

