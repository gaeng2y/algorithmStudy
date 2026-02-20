class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        if n <= 0 { return false }
        var x = n
        while x % 3 == 0 {
            x /= 3
        }
        return x == 1
    }
}
