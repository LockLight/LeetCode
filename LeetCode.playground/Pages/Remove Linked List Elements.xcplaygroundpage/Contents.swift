//删除链表中等于给定值 val 的所有节点。
//
//示例:
//
//输入: 1->2->6->3->4->5->6, val = 6
//输出: 1->2->3->4->5

import Foundation

public class ListNode{
    public var val:Int
    public var next:ListNode?
    public init(_ val:Int){
        self.val = val
        self.next = nil
    }
}

func removeElements(_ head:ListNode?,_ val:Int) -> ListNode?{
    let dummy  = ListNode(0)
    dummy.next =  head
    var node = dummy
    
    while node.next != nil {
        if node.next!.val == val{
            node.next = node.next!.next
        }else{
            node = node.next!
        }
    }
    return dummy.next
}
