//: [Previous](@previous)
//删除重复元素,计算数组个数
//思路:保存一个索引，将该索引中的元素与前面的元素进行比较。

import Foundation

func removeDuplicates(_ nums:inout[Int]) -> Int{
//    guard nums.count > 0 else {
//        return 0
//    }
//
//    var index = 0
//    for num in nums where num != nums[index]{
//        index +=  1
//        nums[index] = num
//    }
//    return index+1
    if (nums.count <= 1){return nums.count}

    var slow = 0
    for fast in 0..<nums.count{
        if nums[slow] != nums[fast] {
            slow += 1
            nums[slow] = nums[fast]
        }
    }
    return slow + 1
//    return Set(nums).count
}

var array = [0,1,1,13,13,2]
removeDuplicates(&array)
