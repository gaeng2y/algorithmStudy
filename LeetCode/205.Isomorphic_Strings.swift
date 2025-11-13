class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var mapST = [Character: Character]()
        var mapTS = [Character: Character]()

        let sArr = Array(s)
        let tArr = Array(t)

        for i in 0..<sArr.count {
            let cs = sArr[i]
            let ct = tArr[i]

            if let mapped = mapST[cs], mapped != ct {
                return false
            }
            if let mapped = mapTS[ct], mapped != cs {
                return false
            }

            mapST[cs] = ct
            mapTS[ct] = cs
        }
        return true
    }
}
