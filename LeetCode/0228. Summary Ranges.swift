class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard nums.isEmpty == false else { return [] }

        var result: [String] = []
        var start = nums[0]

        for i in 1..<nums.count {
            // 끊긴 지점
            if nums[i] != nums[i - 1] + 1 {
                if start == nums[i - 1] {
                    result.append("\(start)")
                } else {
                    result.append("\(start)->\(nums[i - 1])")
                }
                start = nums[i] // 새 범위 시작
            }
        }

        // ⭐️ 마지막 범위 처리 (중요)
        if start == nums.last! {
            result.append("\(start)")
        } else {
            result.append("\(start)->\(nums.last!)")
        }

        return result
    }
}
