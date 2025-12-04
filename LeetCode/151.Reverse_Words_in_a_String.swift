class Solution {
    func reverseWords(_ s: String) -> String {
        let arrs = s.split { $0 == " " }.filter { $0.isEmpty == false }.map { String($0) }
        let reversedArrs = arrs.reversed()
        let result = reversedArrs.joined(by: " ")
        return String(result)
    }
}
