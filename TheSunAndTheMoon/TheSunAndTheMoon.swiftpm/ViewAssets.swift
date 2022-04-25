//
//  ViewAssets.swift
//  TheSunAndTheMoon
//
//  Created by 이창형 on 2022/04/24.
//

import SwiftUI

struct MainText: View {
    
    var text : String = ""
    var body: some View {
        Text("\(text)")
            .font(.system(size: 28, weight: .light, design: .monospaced))
            .padding(.horizontal, 50)
            .padding(.vertical, 50)
    }
}




