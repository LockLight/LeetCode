//: [Previous](@previous)

import Foundation

func isAnagram(_ s:String,_ t:String) -> Bool{
    guard s.count == t.count else {
        return false
    }
    
    return s.unicodeScalars.sorted() == t.unicodeScalars.sorted()
}

isAnagram("apple", "pplea")

