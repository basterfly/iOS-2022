//
//  main.swift
//  JustForTests
//
//  Created by Yegor Kozlovskiy on 20.02.2022.
//

import Foundation

//Section 9: Structures - Coding Excercise

struct User {
    var name : String
    var email : String?
    var followers : Int
    var isActive : Bool
    
    init(name: String, email: String?, followers: Int, isActive: Bool) {
        self.name = name
        self.email = email
        self.followers = followers
        self.isActive = isActive
    }
    
    func logStatus() {
        if isActive {
            print("\(name) is working hard")
        } else {
            print("\(name) has left earth")
        }
    }
}

var richard = User(name: "Richard", email: nil, followers: 0, isActive: false)
richard.logStatus()

    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.name) on \(musk.email!) ...")
    print("\(musk.name) has \(musk.followers) followers")
    // sometime later
    musk.isActive = false
    musk.logStatus()
