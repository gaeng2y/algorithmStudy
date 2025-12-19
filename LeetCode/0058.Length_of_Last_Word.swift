class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        s.split { $0 == " " }.map { String($0) }.last?.count ?? 0
    }
}
