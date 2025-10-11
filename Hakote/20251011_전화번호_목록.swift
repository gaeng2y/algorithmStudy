import Foundation

func solution(_ phone_book: [String]) -> Bool {
    let phoneSet = Set(phone_book)
    
    for phone in phone_book {
        // 각 전화번호의 모든 접두어를 확인
        for i in 1..<phone.count {
            let prefix = String(phone.prefix(i))
            if phoneSet.contains(prefix) {
                return false
            }
        }
    }
    
    return true
}

