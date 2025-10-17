import Foudnation

func solution(_ arr: [Int]) -> [Int] {
    var answer: [Int] = []
    guard let first = arr.first else { return answer }
    answer.append(first)
    
    for i in 1..<arr.count {
        if arr[i - 1] != arr[i] {
            answer.append(arr[i])
        }
    }
    
    return answer
}
