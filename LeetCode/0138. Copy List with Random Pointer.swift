/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var next: Node?
 *     public var random: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *    	   self.random = nil
 *     }
 * }
 */

class Solution {
    func copyRandomList(_ head: Node?) -> Node? {
        // edge case
        guard let head = head else { return nil }
        
        // 원본 노드 -> 복사 노드 매핑
        var map: [ObjectIdentifier: Node] = [:]
        
        // =====================
        // STEP 1: 노드만 복사
        // =====================
        var current: Node? = head
        while let node = current {
            let copy = Node(node.val)
            map[ObjectIdentifier(node)] = copy
            current = node.next
        }
        
        // ==============================
        // STEP 2: next / random 연결
        // ==============================
        current = head
        while let node = current {
            let copy = map[ObjectIdentifier(node)]!
            
            // next 연결
            if let next = node.next {
                copy.next = map[ObjectIdentifier(next)]
            }
            
            // random 연결
            if let random = node.random {
                copy.random = map[ObjectIdentifier(random)]
            }
            
            current = node.next
        }
        
        // 복사된 head 반환
        return map[ObjectIdentifier(head)]
    }
}
