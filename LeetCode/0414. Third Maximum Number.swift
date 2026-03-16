class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var maxCount = 1
        var numsCopy = Set(nums)
        if numsCopy.count < 3 {
            return nums.max()!
        }
        
        while maxCount <= numsCopy.count {
            let maximum = numsCopy.firstIndex(of: numsCopy.max()!)!

            numsCopy.remove(at: maximum)
            maxCount += 1
            
            if maxCount == 3 {
                var finalArray = Array(numsCopy)
                return finalArray.max()!
            }
        }
        
        return 0
    }
}
