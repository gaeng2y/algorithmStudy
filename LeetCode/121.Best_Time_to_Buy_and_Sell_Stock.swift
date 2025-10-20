// 배열을 순회하며 현재까지의 최소값을 추적하고,
// 매일의 가격에서 최소값을 뺀 이익을 계산해 최대 이익을 갱신합니다.

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxProfit = 0
        
        for price in prices {
            minPrice = min(minPrice, price)
            maxProfit = max(maxProfit, price - minPrice)
        }
        return maxProfit
    }
}
