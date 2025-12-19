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
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var k = k
        var result = 0
        
        func inorder(_ node: TreeNode?) {
            guard let node = node else { return }
            inorder(node.left)
            k -= 1
            if k == 0 {
                result = node.val
                return
            }
            inorder(node.right)
        }
        
        inorder(root)
        return result
    }
}
