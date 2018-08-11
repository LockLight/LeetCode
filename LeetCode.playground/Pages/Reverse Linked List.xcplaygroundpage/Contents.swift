//: [Previous](@previous)

import Foundation

public class ListNode{
    public var val:Int
    public var next:ListNode?
    public init(_ val:Int) {
        self.val = val
        self.next = nil
    }
}

func reverseLinkList(_ head:ListNode?) -> ListNode?{
    var temp:ListNode?
    var first = head
    
    while first != nil {
        let second = first!.next
        
        first!.next = temp
        temp = first
        first = second
    }
    return temp
}

