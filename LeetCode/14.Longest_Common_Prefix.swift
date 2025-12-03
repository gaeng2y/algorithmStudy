/*
- 가장 짧은 문자열을 기준으로 한 글자씩 순회
- 모든 문자열이 그 위치의 문자를 공유하면 prefix에 추가
- 하나라도 다르면 그 순간 종료하고 반환
*/
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }

        // 가장 짧은 문자열 기준
        let shortest = strs.min(by: { $0.count < $1.count })!
        var prefix = ""

        for (i, char) in shortest.enumerated() {
            for str in strs {
                if str[str.index(str.startIndex, offsetBy: i)] != char {
                    return prefix
                }
            }
            prefix.append(char)
        }

        return prefix
    }
}
