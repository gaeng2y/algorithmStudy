class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid  // 값 타입이라 수정하려면 var로 받아야 함
        let rowCount = grid.count
        let colCount = grid[0].count
        var count = 0
        
        // DFS 정의
        func dfs(_ r: Int, _ c: Int) {
            // 범위 밖이면 종료
            if r < 0 || r >= rowCount || c < 0 || c >= colCount {
                return
            }
            // 물이거나 이미 방문한 칸이면 종료
            if grid[r][c] == "0" { return }
            
            // 방문 처리 (land → water)
            grid[r][c] = "0"
            
            // 상하좌우 탐색
            dfs(r+1, c)
            dfs(r-1, c)
            dfs(r, c+1)
            dfs(r, c-1)
        }
        
        // 전체 grid 순회
        for i in 0..<rowCount {
            for j in 0..<colCount {
                // 새로운 land 발견
                if grid[i][j] == "1" {
                    count += 1
                    dfs(i, j)
                }
            }
        }
        
        return count
    }
}
