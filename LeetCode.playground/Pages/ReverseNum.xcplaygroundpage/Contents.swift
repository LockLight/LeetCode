//: [Previous](@previous)

import Foundation

func reverseNum(_ x:Int) -> Int{
    var i = x
    var j = 0
    
    while i != 0 {
        if abs(j) > (Int.max / 10){
            return 0
        }
        j = j * 10 + i % 10
        i = i / 10
    }
    return j
}

var num:Int = 321
reverseNum(num)

