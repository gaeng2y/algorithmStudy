// ✅ 가장 효율적인 계산 방식 (Greedy + 정렬된 표 하나)
// 1. 맨 위 값부터 차례대로 num에서 빼면서
// 2. 빼질 때마다 해당 로마 숫자를 결과 문자열에 append

class Solution {
    func intToRoman(_ num: Int) -> String {
        let values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let romans = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

        var n = num
        var result = ""

        for i in 0..<values.count {
            while n >= values[i] {
                n -= values[i]
                result += romans[i]
            }
        }

        return result
    }
}
