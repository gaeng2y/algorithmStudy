class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let patternArr = Array(pattern)
        let words = s.split(separator: " ").map { String($0) }
        
        // 길이 다르면 바로 false
        if patternArr.count != words.count { return false }
        
        var charToWord = [Character: String]()
        var wordToChar = [String: Character]()
        
        for i in 0..<patternArr.count {
            let c = patternArr[i]
            let w = words[i]
            
            // 패턴 문자 → 단어 매핑 확인
            if let mappedWord = charToWord[c] {
                if mappedWord != w { return false }
            } else {
                charToWord[c] = w
            }
            
            // 단어 → 패턴 문자 매핑 확인
            if let mappedChar = wordToChar[w] {
                if mappedChar != c { return false }
            } else {
                wordToChar[w] = c
            }
        }
        
        return true
    }
}
