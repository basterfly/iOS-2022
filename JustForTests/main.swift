//
//  main.swift
//  JustForTests
//
//  Created by Yegor Kozlovskiy on 20.02.2022.
//

import Foundation

//Section 9: - Structures with init, properties and methods
// v3 init() with self.

struct Town3{
    var name: String
    var citizens: [String]
    var resources: [String : Int]
    
    init(name: String, citizens: [String], resources: [String : Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify() {
        print("Defences Incresed")
    }
}

var ghostTown = Town3(name: "Ghost McGhostface", citizens: [], resources: ["Tumbleweed" : 1])
print("""
    Town Name:  \(ghostTown.name)
    Resouces: \(ghostTown.resources)
    Citizens: \(ghostTown.citizens.count)
""")
ghostTown.fortify()
