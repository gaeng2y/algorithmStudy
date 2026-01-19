class Solution {
    func isHappy(_ n: Int) -> Bool {
        var seen = Set<Int>()
        var n = n
        
        while n != 1 && !seen.contains(n) {
            seen.insert(n)
            n = String(n).reduce(0) { $0 + Int(String($1))! * Int(String($1))! }
        }
        
        return n == 1
    }
}
