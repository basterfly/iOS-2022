//
//  main.swift
//  JustForTests
//
//  Created by Yegor Kozlovskiy on 20.02.2022.
//

import Foundation

//Leap year
/*
The 3 conditions for any given year to be a leap year are:
The year is exactly divisible by four (with no reminder) then it is a leap year, unless:
If the year is also divisible by 100 (years ending in two zeros), then it is not a leap year, except if
It is also divisible by 400 (in this case it will be a leap year).
Hint: You can check Wikipedia for the conditions expressed in your native language.
For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
If in doubt you can check the year here:
http://time-and-calendar.com/leap-years
Complete the isLeap() function to print "YES" if the input is a leap year and "NO" if the input year was not.
*/

func isLeap(year: Int) {
    if year % 4 == 0 {
        if (year % 100) == 0 {
            if year % 400 == 0 {
                print(year, " is a LEAP year!")
            } else {
                print("\(year) is NOT a leap year!")
            }
        } else {
            print("\(year) is a LEAP year!")
        }
    } else {
        print("\(year) is NOT a leap year!")
    }
}

isLeap(year: Int.random(in: 1000 ... 3000) )
 
