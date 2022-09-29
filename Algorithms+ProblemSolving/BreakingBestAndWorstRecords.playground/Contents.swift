import Cocoa
/*
 https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
 */

func breakingRecords(scores: [Int]) -> [Int] {
    var newMinRecordCount = 0
    var newMaxRecordCount = 0
    var minScore = scores[0]
    var maxScore = scores[0]
    
    for score in scores {
        if score < minScore {
            minScore = score
            newMinRecordCount += 1
        }
        
        if score > maxScore {
            maxScore = score
            newMaxRecordCount += 1
        }
    }
    return [newMaxRecordCount, newMinRecordCount]
}

breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1])
