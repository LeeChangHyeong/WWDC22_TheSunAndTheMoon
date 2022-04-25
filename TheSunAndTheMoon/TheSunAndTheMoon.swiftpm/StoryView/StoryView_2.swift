//
//  File.swift
//  TheSunAndTheMoon
//
//  Created by 이창형 on 2022/04/20.
//

import Foundation
import SwiftUI

struct StoryView_2: View {
    @State private var touch = false
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
        VStack(){
            Image("Story_2")
                .resizable()
                .scaledToFit()
            
            MainText(text: "One day, mother went over the mountain where tigers often appeared to sell rice cakes to the traditional market.")
        
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
            StoryView_3()
        }
    }
    }
    
}
    


