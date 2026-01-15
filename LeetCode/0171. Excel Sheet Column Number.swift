class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        columnTitle.unicodeScalars.reduce(0, { $0 * 26 + Int($1.value) - 64})
    }
}
