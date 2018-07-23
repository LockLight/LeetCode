//: [Previous](@previous)
//给定两个数组，写一个方法来计算它们的交集。

import Foundation


func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//    return Array(Set(nums1).intersection(Set(nums2)))
    let nums1 = nums1.sorted()
    let nums2 = nums2.sorted()
    var returnNums = [Int]()
    var i = 0,j = 0
    while i < nums1.count && j < nums2.count {
        if nums1[i] == nums2[j] {
            returnNums.append(nums1[i])
            i += 1
            j += 1
        } else if nums1[i] < nums2[j] {
            i += 1
        } else {
            j += 1
        }
    }

    return returnNums
}

var array1 = [1,2,2,3]
var array2 = [2,2]

intersect(array1, array2)

func intersectSortArray(_ nums1:[Int], _ nums2:[Int]) -> [Int]{
    var intersects = [Int]()
    
//    var frequencies = Dictionary(nums1.map { ($0, 1) } , uniquingKeysWith: +)
    
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

