//: [Previous](@previous)
//输入: [1,2,3]
//输出: [1,2,4]
//解释: 输入数组表示数字 123。

import Foundation

func plusOne(_ digits:[Int]) -> [Int]{
    if digits.isEmpty {
        return digits
    }
    
    var nums = digits
    for i in (0..<nums.count).reversed() {
        if nums[i] < 9{
            nums[i] += 1
            return nums
        }
        nums[i] = 0
    }
    return [1] + nums
}

var array = [1,2,3]
plusOne(array)
