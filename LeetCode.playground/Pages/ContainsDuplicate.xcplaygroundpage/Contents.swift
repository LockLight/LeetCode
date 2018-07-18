//: [Previous](@previous)
//给定一个整数数组，判断是否存在重复元素。
//如果任何值在数组中出现至少两次，函数返回 true。如果数组中每个元素都不相同，则返回 false。

import Foundation

func containsDuplicate(_ nums:[Int]) -> Bool{
//    if nums.count <= 1 {
//        return false
//    }
//
//    for i in 0..<nums.count {
//        for j in i+1..<nums.count{
//            if nums[i] == nums[j]{
//                return true
//            }
//        }
//    }
//    return false
    let set = Set(nums)
    return set.count != nums.count
}

var array = [1,2,3]
containsDuplicate(array)
