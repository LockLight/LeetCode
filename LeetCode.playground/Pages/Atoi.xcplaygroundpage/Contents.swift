//:atoi (表示 ascii to integer)是把字符串转换成整型数的一个函数

import Foundation

func myAtoi(_ str:Sting) -> Int{
    let chars = [Character](str)
    
    var result = 0
    var sign = 0
    var isPrefix = true
    
    for char in chars {
        // 1. 先判断字符串前面的空格
        if char == " " && isPrefix {
            continue
        }
        
        isPrefix = false
        
        // 2. 判断正负号
        if char == "+" || char == "-" {
            if sign != 0 {
                break
            }
            sign = char == "+" ? 1 : -1
            continue
        }
        
        // 3. 判断合理的值
        if char >= "0" && char <= "9" {
            let charValue = Int(String(char))!
            
            // 3.1 大于最大值
            if sign >= 0 && result > ((Int(Int32.max) - charValue) / 10) {
                return Int(Int32.max)
            }
            
            // 3.2 小于最小值
            if sign == -1 && -result < (Int(Int32.min) + charValue) / 10  {
                return Int(Int32.min)
            }
            
            // 3.3 正常值
            result = result * 10 + charValue
        } else {
            break
        }
    }
    
    sign = sign == 0 ? 1 : sign
    
    return result * sign
}
