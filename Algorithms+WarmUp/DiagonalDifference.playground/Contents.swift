import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    var leftDiagonal = [Int]()
    var rightDiagonal = [Int]()

    for (index, i) in arr.enumerated() {
        print(index)
        leftDiagonal.append(i[index])
    }

    for (index, i) in arr.reversed().enumerated() {
        print(index)
        rightDiagonal.append(i[index])
    }
    
    let leftTotal = leftDiagonal.reduce(0, +)
    let rightTotal = rightDiagonal.reduce(0, +)
    
    return abs(leftTotal - rightTotal)
}
