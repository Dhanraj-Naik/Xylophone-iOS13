//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print("tapped")
        print(sender.backgroundColor!)
        
        /*
        guard let button = sender as? UIButton else {
               return
           }
        
       
        
        switch button.tag {
            case 1:
                playSound("C")
            case 2:
                playSound("D")
            case 3:
                playSound("E")
        case 4:
            playSound("F")
        case 5:
            playSound("G")
        case 6:
            playSound("A")
        case 7:
            playSound("B")
            default:
                print("Unknown language")
                return
            }
        
        */
        playSound(res: sender.currentTitle!)
    }
    
    func playSound(res: String) {
        let url = Bundle.main.url(forResource: res, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

