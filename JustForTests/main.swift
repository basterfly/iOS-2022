//
//  main.swift
//  JustForTests
//
//  Created by Yegor Kozlovskiy on 20.02.2022.
//

import Foundation

// Challenge 82 switch Angela Yu

func loveCalculator() {
    var loveScore = Int.random(in: 0 ... 100)
    print(loveScore)
    switch loveScore {
    case (80 ... 100) :
        print("You love each other like Kanye love Kanye")
    case (40 ... 79) :
        print("You go toghether like coke and Mentos")
    case (0 ... 39) :
        print("You`ll be forever alone")
    default :
        print("Error")
    }
}

loveCalculator()

