class Solution {
    func isUgly(_ n: Int) -> Bool {
        guard n >= 1 else {
            return false
        }

        var num = n

        while num % 2 == 0 {
            num /= 2
        }

        while num % 3 == 0 {
            num /= 3
        }

        while num % 5 == 0 {
            num /= 5
        }

        return num == 1
    }
}
