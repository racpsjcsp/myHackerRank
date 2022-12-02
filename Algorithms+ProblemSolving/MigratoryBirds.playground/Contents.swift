import Foundation

/*
 https://www.hackerrank.com/challenges/migratory-birds/problem
 */

func migratoryBirds(arr: [Int]) -> Int {
    var type1 = 0, type2 = 0, type3 = 0, type4 = 0, type5 = 0
    var resultArr = [Int]()
    
    for i in arr {
        if i == 1 {
            type1 += 1
        } else if i == 2 {
            type2 += 1
        } else if i == 3 {
            type3 += 1
        } else if i == 4 {
            type4 += 1
        } else if i == 5 {
            type5 += 1
        }
    }

    resultArr.append(type1)
    resultArr.append(type2)
    resultArr.append(type3)
    resultArr.append(type4)
    resultArr.append(type5)
    
    var smallerType = 0
    var rightIndex = 0
    for (i, n) in resultArr.enumerated() {
        if n > smallerType {
            smallerType = n
            rightIndex = i+1
        }
    }
    
    return rightIndex
}

migratoryBirds(arr: [1, 4, 4, 4, 5, 3])
