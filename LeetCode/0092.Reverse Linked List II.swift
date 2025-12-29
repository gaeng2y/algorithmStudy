/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }

- dummy 노드로 left = 1 케이스 처리
- left-1 위치까지 이동
- left ~ right 구간을 head-insertion 방식으로 한 번에 뒤집기
 */

class Solution {
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        // dummy 노드 생성 (left = 1 처리용)
        let dummy = ListNode(0)
        dummy.next = head
        
        // left-1 위치로 이동
        var prev: ListNode? = dummy
        for _ in 1..<left {
            prev = prev?.next
        }
        
        // 뒤집기 시작
        let start = prev?.next          // 뒤집힐 구간의 첫 노드
        var curr = start?.next          // 이동하면서 앞으로 붙일 노드
        
        for _ in 0..<(right - left) {
            start?.next = curr?.next
            curr?.next = prev?.next
            prev?.next = curr
            curr = start?.next
        }
        
        return dummy.next
    }
}
