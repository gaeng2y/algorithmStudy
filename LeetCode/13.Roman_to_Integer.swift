class Solution {
    enum Roman: String {
        case I = "I", V = "V", X = "X", L = "L", C = "C", D = "D", M = "M"
        var intValue: Int {
            switch self {
                case .I: 1
                case .V: 5
                case .X: 10
                case .L: 50
                case .C: 100
                case .D: 500
                case .M: 1000
            }
         }
    }

    func romanToInt(_ s: String) -> Int {
        var result = 0
        let chars = Array(s)
        
        for i in 0..<chars.count {
            let current = Roman(rawValue: String(chars[i]))!.intValue
            let next = (i + 1 < chars.count) ? Roman(rawValue: String(chars[i+1]))?.intValue ?? 0 : 0
            
            if current < next {
                result -= current
            } else {
                result += current
            }
        }
        return result
    }
}
