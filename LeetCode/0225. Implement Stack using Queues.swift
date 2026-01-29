class MyStack {
    private var queue: [Int] = []

    init() {}

    func push(_ x: Int) {
        queue.append(x)
        // 방금 넣은 원소가 맨 앞으로 오도록 회전
        for _ in 0..<(queue.count - 1) {
            queue.append(queue.removeFirst())
        }
    }

    func pop() -> Int {
        return queue.removeFirst()
    }

    func top() -> Int {
        return queue.first!
    }

    func empty() -> Bool {
        return queue.isEmpty
    }
}
