class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var i = 0
        var j = 0

        let tArr = Array(t)
        let sArr = Array(s)

        while j < tArr.count {
            if i < sArr.count && tArr[j] == sArr[i] {
                i += 1
            }
            j += 1
        }

        return i == sArr.count
    }
}
