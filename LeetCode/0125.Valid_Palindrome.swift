class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let trimedString = s.lowercased().filter { $0.isLetter || $0.isNumber }
        let reversedTrimedString = String(trimedString.reversed())
        return trimedString == reversedTrimedString
    }
}
