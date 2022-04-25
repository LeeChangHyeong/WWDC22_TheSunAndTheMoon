//
//  File.swift
//  TheSunAndTheMoon
//
//  Created by 이창형 on 2022/04/24.
//

import Foundation
import AVFoundation

var player2: AVAudioPlayer!

func PlaySoundEffect(key: String) {
    let url = Bundle.main.url(forResource: key, withExtension: "wav")
    
    guard url != nil else{
        return
    }
    
    do {
        player2 = try AVAudioPlayer(contentsOf: url!)
        if key == "TurnPage"{
            player2?.volume = 2 
        }
        else if key == "tiger"{
            player2?.volume = 17
            
        }
        else{

            player2?.volume = 15
            
        }
       
        player2?.play()
    }catch{
        print("error")
    }
}
