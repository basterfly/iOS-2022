//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

var storyCounter = 0
let stories = [
    ["You see a fork in the road.", "Take a left.", "Take a right."],
    ["You see a tiger.", "Shout for help.", "Play dead."],
    ["You find a treasure chest.", "Open it.", "Check for traps."]
]

func getAStory(_ number: Int) -> Story {
    storyCounter = number
    let storyByNumber : [String] = stories[storyCounter]
    let story = Story(title: storyByNumber[0], choice1: storyByNumber[1], choice2: storyByNumber[2])
    return story
}
