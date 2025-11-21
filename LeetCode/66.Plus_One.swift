class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits

        for i in (0..<result.count).reversed() {
            if result[i] < 9 {
                result[i] += 1
                return result
            }
            result[i] = 0
        }

        // 모든 자리가 9였을 경우
        result.insert(1, at: 0)
        return result
    }
}
