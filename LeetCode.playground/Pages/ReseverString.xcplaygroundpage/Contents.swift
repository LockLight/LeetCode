//: [Previous](@previous)

import Foundation

func reseverString(_ s:String) -> String{
//    return String(s.reversed())
    if s.count <= 1 {return s}
    
    var chars = s.cString(using: .utf8)!
    var i = 0, j = s.count - 1
    while i < j{
        let temp = chars[i]
        chars[i] = chars[j]
        chars[j] = temp
        i += 1
        j -= 1
    }
    return String(utf8String: chars)!
}

var str = "Hello world"
reseverString(str)

