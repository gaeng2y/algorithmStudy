/*
핵심 아이디어

1. 주식은 꼭 저점에서만 사고, 꼭 고점에서만 팔 필요는 없다.
왜냐하면 하루하루 오르는 부분을 모두 이익으로 취합하면 결과적으로 최대 이익이 됩니다.

2. 연속해서 가격이 오르는 구간에서는 계속 매도/매수하는 전략이 최적입니다.
예를 들어: [1, 2, 3, 4, 5]

- 1 → 2 → 3 → 4 → 5

- 여기서는 그냥 1에서 사고 5에서 파는 것과, 1→2, 2→3, 3→4, 4→5 모두 이익을 합치는 것 결과가 같습니다.

3. 따라서 단순히 바로 다음 날 가격이 오늘보다 높으면 이익을 더한다는 전략으로 충분합니다.

접근 방법 : 그리디(Greedy)

변수 profit = 0 초기화

i = 1부터 n-1까지 순회:

if prices[i] > prices[i-1]:
    profit += prices[i] - prices[i-1]


이유: 가격이 오르는 날마다 팔고 다시 사는 것과 동일한 효과.
*/

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        for i in 1..<prices.count {
            if prices[i] > prices[i - 1] {
                profit += (prices[i] - prices[i - 1])
            }
        }

        return profit
    }
}
