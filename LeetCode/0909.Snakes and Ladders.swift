class Solution {
    func snakesAndLadders(_ board: [[Int]]) -> Int {
        let n = board.count
        let target = n * n
        
        // 방문 체크
        var visited = Array(repeating: false, count: target + 1)
        
        // BFS 큐
        var queue: [(Int, Int)] = [(1, 0)] // (현재 칸, 이동 횟수)
        visited[1] = true
        
        while !queue.isEmpty {
            let (curr, moves) = queue.removeFirst()
            
            if curr == target {
                return moves
            }
            
            for dice in 1...6 {
                let next = curr + dice
                if next > target { break }
                
                let (r, c) = getPosition(next, n)
                let destination = board[r][c] == -1 ? next : board[r][c]
                
                if !visited[destination] {
                    visited[destination] = true
                    queue.append((destination, moves + 1))
                }
            }
        }
        
        return -1
    }
    
    // 번호 → (row, col)
    private func getPosition(_ num: Int, _ n: Int) -> (Int, Int) {
        let r = (num - 1) / n
        let c = (num - 1) % n
        
        let row = n - 1 - r
        let col = (r % 2 == 0) ? c : (n - 1 - c)
        
        return (row, col)
    }
}
