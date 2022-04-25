//
//  File.swift
//  TheSunAndTheMoon
//
//  Created by 이창형 on 2022/04/19.
//

import SwiftUI




struct IntroducePage: View{
    @State private var touch = false
    @State private var textAnimation = false
    @State var shown3 = true
    @State var blur3 = true
    
    var body: some View{
        
        ZStack{
        VStack{
            Spacer()
            Text("This story is a traditional Korean fairy tale.")
                .font(.system(size: 40, weight: .bold, design: .monospaced))
                .padding(.top, 100)
            
            
            Spacer()
            Text("Touch the screen to continue")
                .font(.system(size: 33, weight: .light, design: .monospaced))
                .opacity(textAnimation ? 1 : 0)
                
                
            Spacer()
        
        }
        .blur(radius: blur3 ? 10 : 0)
        .background(.white)
        .onAppear(perform: {
            playBGM(key: "Intro_BGM")
            
        })
        .onTapGesture {
            touch.toggle()
        }
        .fullScreenCover(isPresented: $touch){
            StoryView_1()
        }
        .onAppear {
            withAnimation(.spring().repeatForever()) {
                textAnimation = true
            }
            
        }
        if shown3{
            CustomAlertView3(shown3: $shown3, blur3: $blur3)
        }
    
        
        
        }
        
        
    }
    
    
}












