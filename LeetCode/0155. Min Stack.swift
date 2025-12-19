
class MinStack {

    // 실제 값들을 저장하는 스택
    private var stack: [Int] = []

    // 각 시점의 "최소값"만 따로 저장하는 스택
    private var minStack: [Int] = []

    init() {}

    func push(_ val: Int) {
        // 1️⃣ 값 스택에는 무조건 push
        stack.append(val)

        // 2️⃣ 최소값 스택에는
        // - 비어있으면 val이 최소
        // - 아니면 (현재 최소 vs val) 중 더 작은 값을 push
        if let currentMin = minStack.last {
            minStack.append(min(currentMin, val))
        } else {
            minStack.append(val)
        }
    }

    func pop() {
        // 값 스택과 최소값 스택을 동시에 pop
        stack.removeLast()
        minStack.removeLast()
    }

    func top() -> Int {
        // 스택의 맨 위 값 반환
        return stack.last!
    }

    func getMin() -> Int {
        // 최소값 스택의 맨 위 = 현재 스택의 최소값
        return minStack.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
