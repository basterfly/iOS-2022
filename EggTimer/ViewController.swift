//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft" : 5, "Medium" : 7, "Hard" : 12]
    var counter = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        if sender.currentTitle != nil {
            let hardness = sender.currentTitle!
            counter = eggTimes[hardness]! * 60
            print(eggTimes[hardness]!) // just for test
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        }
    }
 
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            print("\(counter) seconds left")
            counter -= 1
        }
    }
}
