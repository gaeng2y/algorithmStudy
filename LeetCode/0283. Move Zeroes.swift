// “0이 아닌 애들만 앞으로 모은다”

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var insertIndex = 0

        // 1️⃣ 0이 아닌 값들을 앞쪽으로 이동
        for num in nums {
            if num != 0 {
                nums[insertIndex] = num
                insertIndex += 1
            }
        }

        // 2️⃣ 남은 부분을 0으로 채우기
        while insertIndex < nums.count {
            nums[insertIndex] = 0
            insertIndex += 1
        }
    }
}
