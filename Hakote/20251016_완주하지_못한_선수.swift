import Foundation

func solution(_ par: [String], _ com: [String]) -> String {
    var counter = [String: Int]()
    
    // 참가자 인원 카운트
    for p in par {
        counter[p, default: 0] += 1
    }
    
    // 완주자 인원 차감
    for c in com {
        counter[c]! -= 1
    }
    
    // 값이 0이 아닌 (즉, 완주하지 못한) 사람 찾기
    for (key, value) in counter {
        if value != 0 {
            return key
        }
    }
    
    return ""
}
