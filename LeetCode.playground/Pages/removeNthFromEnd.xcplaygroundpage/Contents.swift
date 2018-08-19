//给定一个链表，删除链表的倒数第 n 个节点，并且返回链表的头结点。
//
//示例：
//
//给定一个链表: 1->2->3->4->5, 和 n = 2.
//
//当删除了倒数第二个节点后，链表变为 1->2->3->5.
import Foundation

public class ListNode{
    public var val:Int
    public var next:ListNode?
    public init(_ val:Int){
        self.val = val
        self.next = nil
    }
}

func removeNthFromEnd(_ head:ListNode?,_ n:Int) -> ListNode?{
    let dummy = ListNode(0)
    dummy.next = head
    var prev: ListNode? = dummy
    var post: ListNode? = dummy
    
    // move post
    for _ in 0..<n {
        post = post!.next
    }
    
    // move prev and post at the same time
    while post!.next != nil {
        prev = prev!.next
        post = post!.next
    }
    
    prev!.next = prev!.next!.next
    
    return dummy.next
}
