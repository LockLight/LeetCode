//给定一个字符串，验证它是否是回文串，只考虑字母和数字字符，可以忽略字母的大小写。
//
//说明：本题中，我们将空字符串定义为有效的回文串。
//
//示例 1:
//
//输入: "A man, a plan, a canal: Panama"
//输出: true

import Foundation

func isPalindrome(_ s:String) -> Bool{
//    guard !s.isEmpty else {
//        return true
//    }
//    let str = s.components(separatedBy: CharacterSet.alphanumerics.inverted).joined()
//    return String(str.lowercased().reversed()) == String(str.lowercased())
    
    var array = Array(s.lowercased()).filter { (c) -> Bool in
        return c.isValid()
    }
    
    var i = 0 , j = array.count - 1
    while i < j {
        if array[i] != array[j]{
            return false
        }
        i += 1
        j -= 1
    }
    return true
}

extension Character{
    func isValid() -> Bool{
        if self >= "a" && self <= "z"{
            return true
        }
        if self >= "0" && self <= "9"{
            return true
        }
        return false
    }
}

isPalindrome("A man, a plan, a canal: Panama")
