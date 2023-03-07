//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft" : 5, "Medium" : 7, "Hard" : 12]
    var counter = 0
    var totalTime = 0
    var timer = Timer()
    var player: AVAudioPlayer!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        counter = 0
        if sender.currentTitle != nil {
            let hardness = sender.currentTitle!
            totalTime = eggTimes[hardness]! * 60
            progressBar.progress = 1.0
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        }
    }
 
    @objc func updateCounter() {
        if counter < totalTime {
            titleLabel.text = "\((totalTime - counter) / 60) minutes left"
            progressBar.progress = Float(counter) / Float(totalTime)
            print("\(counter) //\(totalTime)// \(progressBar.progress)")
            counter += 1
        } else {
            progressBar.progress = 1
            titleLabel.text = "DONE!"
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
}
