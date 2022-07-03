import Foundation

let candles = [3, 2, 1, 3]

func birthdayCakeCandles(candles: [Int]) -> Int {
    var highestCount = 0
    var highestCandle = candles[0]
    
    for i in candles {
        if highestCandle < i {
            highestCandle = i
        }
    }
    
    for i in candles {
        if highestCandle == i {
            highestCount += 1
        }
    }
    
    return highestCount
}
