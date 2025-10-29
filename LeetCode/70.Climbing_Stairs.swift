class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n > 2 else {
            return n
        }

        var a = 1 // f(1)
        var b = 2 // f(2)
        for _ in 3...n {
            let temp = a + b
            a = b
            b = temp
        }

        return b
    }
}
