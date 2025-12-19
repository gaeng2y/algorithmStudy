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
    func averageOfLevels(_ root: TreeNode?) -> [Double] {

        guard let root else {
            return []
        }

        var queue: [TreeNode] = [root]
        var result: [Double] = []

        while queue.isEmpty == false {
            let levelSize = queue.count
            var sum: Double = 0.0

            for _ in 0..<levelSize {
                let node = queue.removeFirst()
                sum += Double(node.val)

                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }

            let average = sum / Double(levelSize)
            result.append(average)
        }

        return result
    }
}
