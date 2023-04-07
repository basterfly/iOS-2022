//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var number = 0
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.titleLabel == choice1Button.titleLabel {
            number = 1
            buttonPressed()
        } else {
            number = 2
            buttonPressed()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonPressed()
    }
    
    func buttonPressed() {  //updateUI()
        let story = getAStory(number)
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
    }


}

