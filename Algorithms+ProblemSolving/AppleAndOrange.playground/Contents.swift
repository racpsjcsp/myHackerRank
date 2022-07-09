import Foundation

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    var appleValues = [Int]()
    var appleCounter = 0
    
    var orangeValues = [Int]()
    var orangeCounter = 0
    
    
    for apple in apples {
        appleValues.append(apple + a)
    }
    
    for value in appleValues {
        if value >= s && value <= t {
            appleCounter += 1
        }
    }
    
    for orange in oranges {
        orangeValues.append(orange + b)
    }
    
    for value in orangeValues {
        if value >= s && value <= t {
            orangeCounter += 1
        }
    }

    print(appleCounter)
    print(orangeCounter)
}

countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2,3,-4], oranges: [3,-2,-4])
