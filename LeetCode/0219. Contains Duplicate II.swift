class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var lastIndex: [Int: Int] = [:]

        for i in 0..<nums.count {
            let value = nums[i]

            if let prev = lastIndex[value] {
                if i - prev <= k {
                    return true
                }
            }

            // 현재 인덱스로 갱신
            lastIndex[value] = i
        }

        return false
    }
}
