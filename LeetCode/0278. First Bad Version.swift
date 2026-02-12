/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 1
        var right = n
        
        while left < right {
            let mid = left + (right - left) / 2
            
            if isBadVersion(mid) {
                // mid가 bad면, 첫 bad는 mid이거나 왼쪽
                right = mid
            } else {
                // mid가 정상이면, 첫 bad는 오른쪽
                left = mid + 1
            }
        }
        
        return left
    }
}
