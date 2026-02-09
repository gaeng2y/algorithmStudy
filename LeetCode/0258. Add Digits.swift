class Solution {
    func addDigits(_ num: Int) -> Int {
        var n = num

        while n >= 10 { // 두 자리 이상이면 계속
            var sum = 0
            for char in String(n) {
                sum += Int(String(char))!
            }
            n = sum
        }

        return n
    }
}
