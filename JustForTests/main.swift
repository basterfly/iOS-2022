//
//  main.swift
//  JustForTests
//
//  Created by Yegor Kozlovskiy on 20.02.2022.
//

import Foundation

//Section 9: - Structures with init, properties and methods
//v2 init() with different value names

struct Town{
    var name: String
    var citizens: [String]
    var resources: [String : Int]
    
    init(townName: String, people: [String], stats: [String : Int]) {
        name = townName
        citizens = people
        resources = stats
    }
    
    func fotify() {
        print("Defences Incresed")
    }
}

var anotherTown = Town(townName: "Nameless Island", people: ["Tom Hanks"], stats: ["Coconuts": 100])
anotherTown.citizens.append("Wilson")
print(anotherTown.citizens)
