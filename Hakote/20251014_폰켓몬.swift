import Foundation

func solution(nums: [Int) -> Int {
    let set = Set(nums)
    return min(set,count, nums.count / 2)
}

/*
def solution(nums):
    answer = 0
    sets = set(nums)
    print(sets)
    return min(len(sets), len(nums)/2
*/
