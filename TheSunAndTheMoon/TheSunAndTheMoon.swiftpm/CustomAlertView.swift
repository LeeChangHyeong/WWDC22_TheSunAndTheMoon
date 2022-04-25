//
//  File.swift
//  TheSunAndTheMoon
//
//  Created by 이창형 on 2022/04/24.
//

import Foundation
import SwiftUI



struct CustomAlertView: View{
    
    @Binding var shown: Bool
    @Binding var blur: Bool
    var body: some View{
        VStack{
            Spacer()
            Text("The tiger put flour on his hand and put his hand into the room!\n\nTouch the image repeatedly to shake off the flour and help the children!")
                .font(.system(size: 30, weight: .light, design: .monospaced))
                .padding()
            Spacer()
            HStack(){
                Button("OK"){
                    shown.toggle()
                    blur.toggle()
                }.frame(width: UIScreen.main.bounds.width, height: 70 )
                    .foregroundColor(Color.blue)
                    .font(.system(size: 25,weight: .bold,design: .default))
            }
        }.frame(width: UIScreen.main.bounds.width-50, height: 400)
            .background(Color.black)
            .cornerRadius(12)
            .clipped()
        
    }
    
}

struct CustomAlertView2: View{
    @Binding var blur2: Bool
    @Binding var shown2: Bool
    var body: some View{
        VStack{
            Spacer()
            Text("The tiger is chasing the children with a rope!\n\nSwipe the image to cut the rope and save the children!")
                .font(.system(size: 30, weight: .light, design: .monospaced))
                .padding()
            Spacer()
            HStack(){
                Button("OK"){
                    shown2.toggle()
                    blur2.toggle()

                }.frame(width: UIScreen.main.bounds.width, height: 70 )
                    .foregroundColor(Color.blue)
                    .font(.system(size: 25,weight: .bold,design: .default))
            }
        }.frame(width: UIScreen.main.bounds.width-50, height: 400)
            .background(Color.black)
            .cornerRadius(12)
            .clipped()
        
    }
    
}

struct CustomAlertView3: View{
    
    @Binding var shown3: Bool
    @Binding var blur3: Bool
    var body: some View{
        VStack{
            Spacer()
            Text("Recommend you watch it vertically :-)")
                .font(.system(size: 30, weight: .light, design: .monospaced))
                .foregroundColor(.white)
                .padding()
            Spacer()
            HStack(){
                Button("OK"){
                    shown3.toggle()
                    blur3.toggle()

                }.frame(width: UIScreen.main.bounds.width, height: 70 )
                    .foregroundColor(Color.blue)
                    .font(.system(size: 25,weight: .bold,design: .default))
            }
        }.frame(width: UIScreen.main.bounds.width-50, height: 400)
            .background(Color.black)
            .cornerRadius(12)
            .clipped()
        
    }
    
}


//struct CustomAlertView_Previews: PreviewProvider{
//    static var previews: some View {
//        CustomAlertView()
//    }alert: <#Binding<Bool>#>
//}

