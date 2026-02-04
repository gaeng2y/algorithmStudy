// 2의 제곱수는 이진수로 보면 딱 1만 하나 있음
class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        n > 0 && (n & (n - 1)) == 0
    }
}
