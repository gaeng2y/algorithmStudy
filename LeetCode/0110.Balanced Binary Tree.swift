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

 /*
문제 접근 방법 (Recursive / DFS)

이 문제의 핵심은 각 노드에서

1. 왼쪽 서브트리의 높이
2. 오른쪽 서브트리의 높이
   를 구한 뒤, 두 높이의 차이가 1 이하인지 확인하는 것이다.

단순히 높이만 구하면 같은 서브트리를 여러 번 계산하게 되어 비효율적이므로,
"높이 계산"과 "균형 여부 판단"을 하나의 재귀 함수에서 동시에 처리한다.

접근 방식:

* 재귀 함수 check(node)는 해당 노드의 "높이"를 반환한다.
* 만약 현재 서브트리가 이미 균형이 깨졌다면, 높이 대신 -1을 반환한다.

재귀 로직:

1. node가 nil이면 높이 0을 반환한다.
2. 왼쪽 서브트리 높이를 재귀로 구한다.

   * 만약 -1이면, 이미 불균형이므로 바로 -1 반환
3. 오른쪽 서브트리 높이를 재귀로 구한다.

   * 만약 -1이면, 바로 -1 반환
4. 좌우 높이 차이가 1보다 크면 불균형 → -1 반환
5. 균형이라면 현재 노드의 높이 = max(왼쪽, 오른쪽) + 1 반환

최종적으로:

* 루트에서 check(root)의 결과가 -1이 아니면 균형 트리
* -1이면 균형이 깨진 트리

시간 복잡도: O(n) (각 노드를 한 번씩만 방문)
공간 복잡도: O(h) (재귀 호출 스택, h는 트리 높이)
*/

class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        func check(_ node: TreeNode?) -> Int {
            guard let node else {
                return 0
            }

            let left = check(node.left)
            if left == -1 {
                return -1
            }
            let right = check(node.right)
            if right == -1 {
                return -1
            }

            if abs(left - right) > 1 {
                return -1
            }

            return max(left, right) + 1
        }

        return check(root) != -1
    }
}
