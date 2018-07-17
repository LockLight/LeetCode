//: [Previous](@previous)

import Foundation

func removeDuplicates(_ nums:inout[Int]) -> Int{
    guard nums.count > 0 else {
        return 0
    }
    
    var index = 0
    for num in nums where nums[index] != num {
        index +=  1
        nums[index] = num
    }
    return index+1
}

var array = [0,1,3,44,3,0]
removeDuplicates(&array)
