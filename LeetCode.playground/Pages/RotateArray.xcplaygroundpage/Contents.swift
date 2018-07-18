//: Playground - noun: a place where people can play
//复杂度
//时间 O(N) 空间 O(1)
//
//思路
//通过三次反转，我们可以很巧妙的实现旋转数组。首先我们将整个数组反转，然后将前k个数字反转，然后再将后面剩下的数字反转，就得到目标数组了。
//
//注意
//反转数组最简单的方法是交换元素，而交换元素有至少三种方法（临时变量，相加相减，异或）
//
//k可能大于数组长度，旋转不止一次，所以我们要先对k取余



import UIKit

//class RotateArray{
    func rotate(_ nums: inout [Int], _ k: Int) {
        let k = k % nums.count
        
        reverse(&nums, 0, nums.count - 1)
        reverse(&nums, 0, k - 1)
        reverse(&nums, k, nums.count - 1)
    }
    
   func reverse(_ nums: inout [Int], _ startIdx: Int, _ endIdx: Int) {
        // edge case
        if startIdx < 0 || endIdx > nums.count || startIdx >= endIdx {
            return
        }
        
        var startIdx = startIdx
        var endIdx = endIdx
        
        while startIdx < endIdx {
            swap(&nums, startIdx, endIdx)
            startIdx += 1
            endIdx -= 1
        }
    }
    
    func swap<T>(_ nums: inout Array<T>, _ p: Int, _ q: Int) {
        (nums[p], nums[q]) = (nums[q], nums[p])
    }

    var array = [1,2,3,4,5]
    rotate(&array, 3)
//}


