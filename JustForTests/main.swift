//
//  main.swift
//  JustForTests
//
//  Created by Yegor Kozlovskiy on 20.02.2022.
//

import Foundation

//var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func highestScore(scores: [String: Int]) {
   var tempKey = ""
   var tempData = 0
 //Write your code here.
   for (key, data) in scores {
       if data > tempData {
           tempKey = key
           tempData = data
       }
   }
   print("\(tempKey) : \(tempData)")
}

//Try some different scores.
//Dont add the lines below to udemy!
highestScore(
   scores: [
   "Amy": 78,
   "James": 65,
   "Helen": 92
   ]
)

