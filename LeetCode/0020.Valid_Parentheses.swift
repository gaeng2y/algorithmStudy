class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let pairs: [Character: Character] = [")": "(", "}": "{", "]": "["]

        for char in s {
            if let match = pairs[char] {
                // 닫힌 괄호라면 스택 top과 비교
                if stack.isEmpty || stack.removeLast() != match {
                    return false
                }
            } else {
                // 열린 괄호라면 스택에 추가
                stack.append(char)
            }
        }

        // 모든 괄호가 맞춰졌는지 확인
        return stack.isEmpty
    }
}
