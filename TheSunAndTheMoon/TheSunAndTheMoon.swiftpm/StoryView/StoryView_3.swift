//
//  File.swift
//  TheSunAndTheMoon
//
//  Created by 이창형 on 2022/04/20.
//

import Foundation
import SwiftUI

struct StoryView_3: View{
    @State private var touch = false
    var body: some View{
        ZStack{
            Color.black
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
        VStack(){
            Image("Story_3")
                .resizable()
                .scaledToFit()
            
            MainText(text: "She sold rice cakes until late at night, but sell the rice cakes did not go well.")

            
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
            StoryView_4()
        }
        }
    }
}
