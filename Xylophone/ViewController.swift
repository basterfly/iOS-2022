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
//        print(sender.currentTitle)
        //Reduces the opacity of the Button to half (the selected Button)
        print("Start")
        sender.alpha = 0.5
        //this line of code will help you to delay the opacity to the selected seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //This code brings sender's opacity back to fully opaque.
            sender.alpha = 1.0
            print("End")
        }
        playSound(soundName: sender.currentTitle!)
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

}

