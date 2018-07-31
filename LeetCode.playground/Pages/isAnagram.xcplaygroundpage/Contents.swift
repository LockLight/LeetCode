//: [Previous](@previous)
//给定两个字符串 s 和 t ，编写一个函数来判断 t 是否是 s 的一个字母异位词。

//示例 1:
//
//输入: s = "anagram", t = "nagaram"
//输出: true

import Foundation

func isAnagram(_ s:String,_ t:String) -> Bool{
    guard s.count == t.count else {
        return false
    }
    
    return s.unicodeScalars.sorted() == t.unicodeScalars.sorted()
}

isAnagram("apple", "pplea")

