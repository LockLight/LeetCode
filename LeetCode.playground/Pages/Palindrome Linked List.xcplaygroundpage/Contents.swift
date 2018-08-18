//请判断一个链表是否为回文链表。
//
//示例 1:
//
//输入: 1->2
//输出: false
//示例 2:
//
//输入: 1->2->2->1
//输出: true

import Foundation

public class ListNode{
    public var val:Int
    public var next:ListNode?
    public init(_ val:Int) {
        self.val = val
        self.next = nil
    }
}

func isPalindrome(_ head: ListNode?) -> Bool {
    guard head != nil else {
        return true
    }
    
    var slow = head
    var fast = head
    var prev: ListNode?
    var post = slow!.next
    
    while fast != nil && fast!.next != nil {
        fast = fast!.next!.next
        
        slow!.next = prev
        prev = slow
        slow = post
        post = post!.next
    }
    
    if fast != nil {
        slow = post
    }
    
    while prev != nil {
        if prev!.val != slow!.val {
            return false
        }
        
        prev = prev!.next
        slow = slow!.next
    }
    
    return true
}
