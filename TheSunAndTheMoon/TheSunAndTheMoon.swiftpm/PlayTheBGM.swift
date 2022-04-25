//
//  File.swift
//  TheSunAndTheMoon
//
//  Created by 이창형 on 2022/04/19.
//

import Foundation
import AVFoundation

var player: AVAudioPlayer!

func playBGM(key: String) {
    let url = Bundle.main.url(forResource: key, withExtension: "mp3")
    
    guard url != nil else{
        return
    }
    
    do {
        if key == " Story_Scary2" {
            player?.volume = 14
        }
        else {
            player?.volume = 11
        }
        player = try AVAudioPlayer(contentsOf: url!)
        player.numberOfLoops = 100
        player?.play()
    }catch{
        print("error")
    }
}
