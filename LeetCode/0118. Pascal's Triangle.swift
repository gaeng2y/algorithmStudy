class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result: [[Int]] = []

        for i in 0..<numRows {
            // i번째 줄은 항상 길이가 i+1
            var row = Array(repeating: 0, count: i + 1)

            for j in 0...i {
                // 양 끝은 항상 1
                if j == 0 || j == i {
                    row[j] = 1
                } else {
                    // 바로 위 줄의 두 값을 더함
                    row[j] = result[i - 1][j - 1] + result[i - 1][j]
                }
            }

            result.append(row)
        }

        return result
    }
}
