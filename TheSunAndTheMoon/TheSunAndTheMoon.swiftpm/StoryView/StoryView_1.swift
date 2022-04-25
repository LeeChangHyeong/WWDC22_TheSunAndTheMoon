//
//  File.swift
//  TheSunAndTheMoon
//
//  Created by 이창형 on 2022/04/19.
//


import SwiftUI



struct StoryView_1: View{
    @State private var touch = false
    var body: some View{
        
        ZStack{
            Color.black
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
            
            VStack(){
                Image("Story_1")
                    .resizable()
                    .scaledToFit()
    
                MainText(text: "Once upon a time, in a deep mountain, there lived a poor family of a single mother and a children.\n\nMother barely making ends meet by selling rice cakes at the traditional market, and she had to climb several hills to get to the market.")
                
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
                StoryView_2()
        }
 
        
            
        }
        .onAppear {
            UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
        }
    }
    
    struct StoryView_1_Previews: PreviewProvider{
        static var previews: some View {
            StoryView_1()
        }
    }
}
