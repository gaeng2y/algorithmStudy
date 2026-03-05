class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var left = 1
        var right = num
        
        while left <= right {
            let mid = left + (right - left) / 2
            let square = mid * mid
            
            if square == num {
                return true
            } else if square < num {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return false
    }
}
