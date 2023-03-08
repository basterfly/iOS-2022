//
//  main.swift
//  JustForTests
//
//  Created by Yegor Kozlovskiy on 20.02.2022.
//

import Foundation

func exercise() {
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var word = ""
    //The number of letters in alphabet equals 26
    while word.count < 6 {
        var letter = alphabet[Int.random(in: 0...25)]
        word = word + letter
        print("letter = \(letter)")
        print("word = \(word)")
    }
    
    let password = word//Replace this comment with your code.
    
    print(password)
    
}

exercise()

