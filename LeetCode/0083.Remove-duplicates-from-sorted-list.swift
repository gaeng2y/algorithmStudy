/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var cur = head
        
        while cur != nil && cur?.next != nil {
            if cur!.val == cur!.next!.val {
                // 중복이면 next를 건너뜀
                cur!.next = cur!.next!.next
            } else {
                // 다르면 다음 노드로 이동
                cur = cur!.next
            }
        }
        
        return head
    }
}
