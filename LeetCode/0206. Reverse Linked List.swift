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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var current = head

        while current != nil {
            let next = current?.next   // 1. 다음 저장
            current?.next = prev       // 2. 방향 뒤집기
            prev = current             // 3. prev 이동
            current = next             // 4. current 이동
        }

        return prev
    }
}
