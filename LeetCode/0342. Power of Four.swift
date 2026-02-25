class Solution {
    func isPowerOfFour(_ n: Int) -> Bool {
        if n <= 0 { return false }
        if (n & (n - 1)) != 0 { return false }     // power of two check
        return (n & 0x55555555) != 0               // even bit position check
    }
}
