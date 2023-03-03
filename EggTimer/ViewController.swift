//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft" : 5, "Medium" : 7, "Hard" : 12]
    var counter = 0
    var timer = Timer()
    var progressBarMax: Float = 0.0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        if sender.currentTitle != nil {
            let hardness = sender.currentTitle!
            counter = eggTimes[hardness]! * 60
            progressBarMax = Float(counter)
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        }
    }
 
    @objc func updateCounter() {
        if counter > 0 {
//            print("\(counter) seconds left")
            titleLabel.text = "\(counter) seconds left"
            progressBar.progress = Float(counter) / progressBarMax
            counter -= 1
        } else {
            progressBar.progress = 0
            titleLabel.text = "DONE!"
        }
    }
}
