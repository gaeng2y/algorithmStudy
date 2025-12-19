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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {

        func buildTree(_ left: Int, _ right: Int) -> TreeNode? {
            // 1️⃣ 종료 조건
            if left > right {
                return nil
            }

            // 2️⃣ 가운데 인덱스 선택
            let mid = (left + right) / 2

            // 3️⃣ 가운데 값으로 노드 생성
            let node = TreeNode(nums[mid])

            // 4️⃣ 왼쪽 / 오른쪽을 재귀로 생성
            node.left = buildTree(left, mid - 1)
            node.right = buildTree(mid + 1, right)

            // 5️⃣ 현재 노드 반환
            return node
        }
           
        return buildTree(0, nums.count - 1)
    }
}
