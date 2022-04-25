//
//  File.swift
//  TheSunAndTheMoon
//
//  Created by 이창형 on 2022/04/20.
//

import Foundation
import SwiftUI

struct StoryView_4: View{
    @State private var touch = false
    var body: some View{
        ZStack(){
            Color.black
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
            VStack(){
                Image("Story_4")
                    .resizable()
                    .scaledToFit()
                    .onAppear(perform: {
                        playBGM(key: "Story_Scary2")
                        
                    })
                    
                MainText(text: "She met a tiger on the way home.\n\nThe tiger says, 'Give me a piece of rice cake and I won't eat you'.\n\nFrightened, she gave all the leftover rice cakes, but the tiger ate her too.")
                
            
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
                StoryView_5()
            
        }//ZStack

        }
        
    }
}
