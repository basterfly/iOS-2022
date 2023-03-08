//
//  main.swift
//  JustForTests
//
//  Created by Yegor Kozlovskiy on 20.02.2022.
//

import Foundation


// Challenge 82 if-else Angela Yu

func loveCalculator() {
    var loveScore = Int.random(in: 0...100)
    print(loveScore)
    if loveScore > 80 {
        print("You love each other like Kanye love Kanye")
    } else if (loveScore > 40 && loveScore <= 80) {
        print("You go toghether like coke and Mentos")
    } else {
        print("You`ll be forever alone")
    }
}
 

loveCalculator()

