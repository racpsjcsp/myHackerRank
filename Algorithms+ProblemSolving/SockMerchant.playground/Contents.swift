import Cocoa

/*
 https://www.hackerrank.com/challenges/sock-merchant
 */

func sockMerchant(n: Int, ar: [Int]) -> Int {
    let mappedItems = ar.map { ($0, 1) }
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)

    var pairCounter = 0
    for i in counts {
        if i.value > 1 {
            pairCounter += i.value / 2
        }
    }
    
    return pairCounter
}

let sample1 = [50, 49, 38, 49, 78, 36, 25, 96, 10, 67, 78, 58, 98, 8, 53, 1, 4, 7, 29, 6, 59, 93, 74, 3, 67, 47, 12, 85, 84, 40, 81, 85, 89, 70, 33, 66, 6, 9, 13, 67, 75, 42, 24, 73, 49, 28, 25, 5, 86, 53, 10, 44, 45, 35, 47, 11, 81, 10, 47, 16, 49, 79, 52, 89, 100, 36, 6, 57, 96, 18, 23, 71, 11, 99, 95, 12, 78, 19, 16, 64, 23, 77, 7, 19, 11, 5, 81, 43, 14, 27, 11, 63, 57, 62, 3, 56, 50, 9, 13, 45]
//answer: 28

let sample2 = [10, 20, 20, 10, 10, 30, 50, 10, 20]
//answer: 3

sockMerchant(n: 100, ar: sample1)


