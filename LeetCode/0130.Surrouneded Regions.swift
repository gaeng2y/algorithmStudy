/*
dfs(r, c):
    1. 범위를 벗어나면 return
    2. 현재 칸이 'O'가 아니면 return
    3. 현재 칸을 'S'로 바꿈 (방문 + 안전 표시)
    4. 상/하/좌/우로 dfs 재귀 호출

*/
class Solution {
    func solve(_ board: inout [[Character]]) {
        let rows = board.count
        let cols = board[0].count
        let directions = [(1,0), (-1,0), (0,1), (0,-1)]

        // DFS: edge와 연결된 O를 S로 표시
        func dfs(_ r: Int, _ c: Int) {
            // 1. 범위 체크
            if r < 0 || r >= rows || c < 0 || c >= cols {
                return
            }
            // 2. O가 아니면 중단
            if board[r][c] != "O" {
                return
            }
            // 3. 방문 + 안전 표시
            board[r][c] = "S"

            // 4. 상하좌우 DFS
            for (dr, dc) in directions {
                dfs(r + dr, c + dc)
            }
        }

        // 1️⃣ 첫 번째 / 마지막 행
        for c in 0..<cols {
            if board[0][c] == "O" {
                dfs(0, c)
            }
            if board[rows - 1][c] == "O" {
                dfs(rows - 1, c)
            }
        }

        // 2️⃣ 첫 번째 / 마지막 열
        for r in 0..<rows {
            if board[r][0] == "O" {
                dfs(r, 0)
            }
            if board[r][cols - 1] == "O" {
                dfs(r, cols - 1)
            }
        }

        // 3️⃣ 결과 정리
        for r in 0..<rows {
            for c in 0..<cols {
                if board[r][c] == "O" {
                    board[r][c] = "X"   // 둘러싸인 O
                } else if board[r][c] == "S" {
                    board[r][c] = "O"   // 안전한 O 복구
                }
            }
        }
    }
}
