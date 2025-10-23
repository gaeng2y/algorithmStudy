class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let origin = String(x)
        let reversed = String(origin.reversed())
        return origin == reversed
    }
}
