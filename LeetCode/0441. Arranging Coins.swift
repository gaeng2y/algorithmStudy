class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var lo = 0
        var hi = n  // inclusive
        
        while lo <= hi {
            let mid = lo + (hi - lo) / 2
            let need = Int64(mid) * Int64(mid + 1) / 2
            
            if need <= Int64(n) {
                lo = mid + 1      // mid는 가능, 더 큰 k 탐색
            } else {
                hi = mid - 1      // mid는 불가능, 줄이기
            }
        }
        
        return hi  // 루프 종료 시 hi가 "가능한 최대 k"
    }
}
