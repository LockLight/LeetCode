//给定一个排序链表，删除所有重复的元素，使得每个元素只出现一次。
//
//示例 1:
//
//输入: 1->1->2
//输出: 1->2

import Foundation

public class ListNode{
    public var val:Int
    public var next:ListNode?
    public init(_ val:Int) {
        self.val = val
        self.next = nil
    }
}

func deleteDuplicates(_ head:ListNode?) -> ListNode?{
    //  solution:1
//    guard let head = head else{
//        return nil
//    }
//
//    var newList = head
//    while newList.next != nil {
//        if newList.next!.val == newList.val {
//            newList.next  = newList.next!.next
//        }else{
//            newList = newList.next!
//        }
//    }
//
//    return head
    
    //  solution:2
    if head ==  nil || head?.next == nil{
        return head
    }
    
    let dummy = ListNode(0)
    dummy.next = head
    var node = dummy
    
    while node.next != nil && node.next!.next != nil{
        if node.next!.val == node.next!.next!.val{
            let val = node.next!.val
            while node.next != nil && node.next!.val == node.val{
                node.next = node.next!.next
            }
        }else{
            node = node.next!
        }
    }
    
    return dummy.next
}
