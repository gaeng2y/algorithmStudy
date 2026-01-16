class Solution {
    func hammingWeight(_ n: Int) -> Int {
	    var n = n, result = 0
	    while n != 0 {
		    result += n & 1
		    n >>= 1
	    }
	    return result
    }
}
