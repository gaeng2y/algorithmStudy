class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var n = columnNumber
        var result: [Character] = []

        while n > 0 {
            n -= 1
            let remainder = n % 26
            let char = Character(UnicodeScalar(remainder + 65)!)
            result.append(char)
            n /= 26
        }

        return String(result.reversed())
    }
}
