//
//  main.swift
//  JustForTests
//
//  Created by Yegor Kozlovskiy on 20.02.2022.
//

import Foundation

//Section 9: - Structures with properties and methods

struct Town{
    var name = "Angelaland"
    var citizens = ["Angela", "Jack Bauer"]
    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]
    
    func fotify() {
        print("Defences Incresed")
    }
}

var myTown = Town()
print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain")
myTown.citizens.append("Keanu Reeves")
print("How many citizens in the city? - \(myTown.citizens.count)")
myTown.fotify()

