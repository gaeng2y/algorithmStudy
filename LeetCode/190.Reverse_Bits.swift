class Solution {
    func reverseBits(_ n: Int) -> Int {
        // 문제에서 주어진 정수는 항상 32비트이므로,
        // 모든 비트를 뒤집기 위해 32번 반복한다.
        var newN = n
        var result = 0

        for _ in 0..<32 {
            // result를 왼쪽으로 한 칸 이동하여
            // 새로운 비트를 추가할 공간을 만든다.
            // 이후 newN의 가장 오른쪽 비트(LSB)를 추출하여
            // OR 연산으로 result의 맨 오른쪽에 붙인다.
            result = (result << 1) | (newN & 1)

            // 이미 사용한 비트를 제거하기 위해
            // newN을 오른쪽으로 한 칸 이동한다.
            newN >>= 1
        }

        // n의 비트를 오른쪽부터 하나씩 꺼내
        // result에 왼쪽부터 차례대로 쌓아올렸기 때문에
        // 최종적으로 모든 비트가 뒤집힌 값이 된다.
        return result
    }
}
