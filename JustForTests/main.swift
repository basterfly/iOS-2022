//
//  main.swift
//  JustForTests
//
//  Created by Yegor Kozlovskiy on 20.02.2022.
//

import Foundation

func testDict() {

    //Don't change this
    var stockTickers: [String: String] = [
        "APPL" : "Apple Inc",
        "HOG": "Harley-Davidson Inc",
        "BOOM": "Dynamic Materials",
        "HEINY": "Heineken",
        "BEN": "Franklin Resources Inc"
    ]
    
    //Write your code here.
    stockTickers = ["WORK" : "Slack Technologies Inc",
                    "BOOM" : "DMC Global Inc"]

  
     //Don't modify this
    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
}
 
testDict()
 
