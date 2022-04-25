//
//  File.swift
//  TheSunAndTheMoon
//
//  Created by 이창형 on 2022/04/20.
//

import SwiftUI

struct StoryView_6: View{
    @State private var touch = false
    @State private var tab = 2
    @State private var radius = 30
    @State private var isShowAlert = false
    @State var shown = true
    @State var blur = true
    var body: some View{
        ZStack{
            Color.black
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
            
           
        VStack(){
            Image("Story_6")
                .resizable()
                .scaledToFit()
                .blur(radius: CGFloat(30 - tab))
                .onTapGesture {
                    tab += 5
                    radius -= 5
                    print(radius)
                    if 0 < radius {
                        PlaySoundEffect(key: "hand")
                    }
                    else if radius == 0{
                        PlaySoundEffect(key: "tiger")
                    }
                }
            
            Button(action: {
                if radius < 3{
                    isShowAlert.toggle()
                    self.touch.toggle()
                    PlaySoundEffect(key: "TurnPage")
                }}) {
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
            StoryView_7()
        }
        .blur(radius: blur ? 10 : 0)
        
            if shown {
                CustomAlertView(shown: $shown, blur: $blur)
            }
            
        }
       
    }
    
    
    
}

