class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sMap: [Character: Int] = [:]
        var tMap: [Character: Int] = [:]

        for char in s {
            let count = sMap[char] ?? 0
            sMap[char] = count + 1
        }

        for char in t {
            let count = tMap[char] ?? 0
            tMap[char] = count + 1
        }

        return sMap == tMap
    }
}
