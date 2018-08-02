//: [Previous](@previous)
//实现 strStr() 函数。
//
//给定一个 haystack 字符串和一个 needle 字符串，在 haystack 字符串中找出 needle 字符串出现的第一个位置 (从0开始)。如果不存在，则返回  -1。
import Foundation

func SubstringOfRange(_ haystack:String,_ needle:String) -> Int{
    guard haystack.count >= needle.count else{
        return -1
    }
    
    guard needle.count != 0 else{
        return 0
    }
    
    if let range = haystack.range(of: needle){
        let index = haystack.distance(from: haystack.startIndex, to: range.lowerBound)
        return index
    }else{
        return -1
    }
}

SubstringOfRange("hello", "ll")
