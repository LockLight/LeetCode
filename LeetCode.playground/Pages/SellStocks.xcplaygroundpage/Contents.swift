//: The best time to buy and sell stocks

import Foundation

func maxProfit(_ prices:[Int]) -> Int{
    if prices.count <= 1{
        return 0
    }
    
    var max:Int = 0
    for p in 1..<prices.count {
        if prices[p] - prices[p-1] > 0 {
            max += (prices[p] - prices[p-1])
        }
    }
    return max
}


var array = [7,1,5,3,6,4]
maxProfit(array)

