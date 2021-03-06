//给定一个整数数组和一个目标值，找出数组中和为目标值的两个数。
//你可以假设每个输入只对应一种答案，且同样的元素不能被重复利用。
//示例:
//
//给定 nums = [2, 7, 11, 15], target = 9
//因为 nums[0] + nums[1] = 2 + 7 = 9
//所以返回 [0, 1]

import Foundation

func twoSum(_ nums:[Int], _ target: Int) -> [Int]{
//    for i in 0..<nums.count{
//        for j in (i+1)..<nums.count{
//            if nums[i] + nums[j] == target{
//                return [i,j]
//            }
//        }
//    }
//    return []
    
    var dict = [Int:Int]()
    
    for i in 0..<nums.count{
        dict[nums[i]] = i
    }
    
    for i in 0..<nums.count{
        let result = target - nums[i]
        if let j = dict[result], j != i{
            return [i,j]
        }
    }
    return []
}

var array = [3,9,11,7]
var target = 16
twoSum(array, target)

    
