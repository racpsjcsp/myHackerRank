import Foundation

/*
 https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
 */

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var counter = 0
    var sum = 0
    
    for (i, iNum) in ar.enumerated() {
        if i < ar.count {
            for (j, jNum) in ar.enumerated() {
                if j < ar.count {
                    if i < j {
                        sum = iNum + jNum
                        if sum % k == 0 {
                            counter += 1
                        }
                    }
                }
            }
        }
    }
    
    return counter
}

print(divisibleSumPairs(n: 6, k: 3, ar: [1, 3, 2, 6, 1, 2]))
