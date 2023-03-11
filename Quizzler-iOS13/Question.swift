//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Yegor Kozlovskiy on 10.03.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text : String
    let answer : String
    
    init(questionText: String, answer: String) {
        self.text = questionText
        self.answer = answer
    }
}
