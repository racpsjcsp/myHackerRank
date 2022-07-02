import Foundation

func plusMinus(arr: [Int]) -> Void {
    var pos = 0.0
    var neg = 0.0
    var zero = 0.0
    
    for item in arr {
        if item > 0 {
            pos += 1
        } else if item < 0 {
            neg += 1
        } else {
            zero += 1
        }
    }
    
    let total = Double(arr.count)
    let posRatio: Double = pos / total
    let negRatio: Double = neg / total
    let zeroRatio: Double = zero / total
    
    print(String(format: "%f", posRatio))
    print(String(format: "%f", negRatio))
    print(String(format: "%f", zeroRatio))
    return
}
