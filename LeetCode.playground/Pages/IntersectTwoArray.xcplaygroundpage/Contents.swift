//: [Previous](@previous)
//给定两个数组，写一个方法来计算它们的交集。

import Foundation

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//    return [Int](Set<Int>(nums1).intersection(nums2))
    var intersects = [Int]()
    var record = [Int]()
    
    for i in 0..<nums1.count{
        let temp = nums1[i]
        for j in 0..<nums2.count{
            if temp == nums2[j]{
                var exist = false
                if record.contains(j){
                    exist = true
                    break
                }
                if !exist {
                    record.append(j)
                    intersects.append(temp)
                    break
                }
            }
        }
    }
    return intersects
}

var array1 = [1,2,2,3]
var array2 = [2,2]

intersect(array1, array2)

func intersectSortArray(_ nums1:[Int], _ nums2:[Int]) -> [Int]{
    var intersects = [Int]()
    
    var i = 0
    var j = 0
    var k = 0
    
    while i < nums1.count {
        while j < nums2.count {
            if nums1[i] == nums2[j]{
                intersects.append(nums1[i])
                i += 1
                j += 1
                k = j
            }
            j += 1
        }
        i += 1
        j = k
    }
    return intersects
}

var array3 = [1,2,2,3]
var array4 = [2,2]

intersectSortArray(array3, array4)

