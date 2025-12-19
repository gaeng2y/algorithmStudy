/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

class Solution {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }

        var result: [Int] = []
        var queue: [TreeNode] = [root]

        while !queue.isEmpty {
            let size = queue.count
            var rightMostValue = 0

            for i in 0..<size {
                let node = queue.removeFirst()
                rightMostValue = node.val   // 마지막에 방문한 노드가 오른쪽 끝

                if let left = node.left { queue.append(left) }
                if let right = node.right { queue.append(right) }
            }

            result.append(rightMostValue)
        }

        return result
    }
}
