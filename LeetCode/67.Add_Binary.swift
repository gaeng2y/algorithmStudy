/*
- 뒤에서 앞으로 진행
- 매번 sum = carry + a[i] + b[i]
- carry = sum / 2
- 결과에 sum % 2 추가
- 마지막에 carry 있으면 추가
- 뒤집어서 반환
*/
class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let aArr = Array(a), bArr = Array(b)
        var i = aArr.count - 1
        var j = bArr.count - 1
        var carry = 0
        var result: [Character] = []
        
        while i >= 0 || j >= 0 || carry == 1 {
            let x = i >= 0 ? Int(String(aArr[i]))! : 0
            let y = j >= 0 ? Int(String(bArr[j]))! : 0
            
            let sum = x + y + carry
            result.append(sum % 2 == 0 ? "0" : "1")
            carry = sum / 2
            
            if i >= 0 { i -= 1 }
            if j >= 0 { j -= 1 }
        }
        
        return String(result.reversed())
    }
}
