/*
1. 문자열을 배열로 변환
2. 왼쪽 포인터 l, 오른쪽 포인터 r
3. l은 왼쪽에서 모음 찾기
4. r은 오른쪽에서 모음 찾기
5. 둘 다 모음이면 swap
6. 포인터 이동
7. l >= r이면 종료
*/

class Solution {
    func reverseVowels(_ s: String) -> String {
        var chars = Array(s)
        let vowels: Set<Character> = ["a","e","i","o","u","A","E","I","O","U"]
        
        var left = 0
        var right = chars.count - 1
        
        while left < right {
            while left < right && !vowels.contains(chars[left]) {
                left += 1
            }
            
            while left < right && !vowels.contains(chars[right]) {
                right -= 1
            }
            
            if left < right {
                chars.swapAt(left, right)
                left += 1
                right -= 1
            }
        }
        
        return String(chars)
    }
}
