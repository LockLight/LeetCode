//: 给定一个字符串，找到它的第一个不重复的字符，并返回它的索引。如果不存在，则返回 -1。(区分大小写)

import Foundation

func firstUniqChar(_ s:String) -> Int {
    var dict = [Character:Bool]()
    
    for char in s{
        if dict[char] != nil{
             dict[char] = true
        }else{
             dict[char] = false
        }
    }
    
    for (i,char) in Array(s).enumerated(){
        if !dict[char]!{
            return i
        }
    }
    return -1
}

var str = "Locklight"
firstUniqChar(str)
