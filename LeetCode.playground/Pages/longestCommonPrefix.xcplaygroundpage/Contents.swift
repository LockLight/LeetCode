//编写一个函数来查找字符串数组中的最长公共前缀。
//
//如果不存在公共前缀，返回空字符串 ""。
//
//示例 1:
//
//输入: ["flower","flow","flight"]
//输出: "fl"

import Foundation

func longestCommonPrefix(_ strs:[String]) -> String{
    var s: String?          //Find the shortest string
    var length = Int.max    //Shortest string's length
    
    for str in strs {
        if str.characters.count < length {
            length = str.characters.count
            s = str
        }
    }
    
    if var s = s {
        var endIndex = s.endIndex
        for str in strs {
            while !s.isEmpty && !str.hasPrefix(s) {
                endIndex = s.index(before: endIndex)
                s = s.substring(to: endIndex)
            }
        }
        return s
    } else {
        return ""
    }
}

longestCommonPrefix(["flower","flow","flight"])

