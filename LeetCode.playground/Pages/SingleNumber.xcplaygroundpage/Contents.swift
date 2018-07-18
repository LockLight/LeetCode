//: [Previous](@previous)
//给定一个非空整数数组，除了某个元素只出现一次以外，其余每个元素均出现两次。找出那个只出现了一次的元


func singleNumber(_ nums: [Int]) -> Int {
    var single = 0
    
    for num in nums{
        single = num ^ single
    }
    return single
}

var array = [2,1,2]
singleNumber(array)

