//
//  File.swift
//  TheSunAndTheMoon
//
//  Created by 이창형 on 2022/04/19.
//

import SwiftUI


struct LaunchPageView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            ContentView()
        }
        else{
            VStack(){
                Image("LaunchPage")
                    .resizable()
                    .scaledToFit()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
            
        }
    }
}

