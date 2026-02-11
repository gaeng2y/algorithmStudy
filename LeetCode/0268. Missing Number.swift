// Missing Number 문제 풀이 (XOR 사용)
// 아이디어:
// 0부터 n까지의 모든 숫자를 XOR한 값과
// 배열 nums 안의 모든 값을 XOR하면,
// 짝이 맞는 숫자들은 서로 상쇄되고
// 배열에 없는 단 하나의 숫자만 남는다.
//
// XOR 성질:
// a ^ a = 0
// a ^ 0 = a
//
// 시간 복잡도: O(n)
// 공간 복잡도: O(1)
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var result = nums.count  // n부터 시작

        for i in 0..<nums.count {
            result ^= i
            result ^= nums[i]
        }

        return result
    }
}
