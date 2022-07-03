import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    var withMin = [Int]()
    var withMax = [Int]()
    
    let isAllSame = arr.allSatisfy({ $0 == arr.first })
    
    if isAllSame {
        print("\(arr.dropLast().reduce(0, +)) \(arr.dropLast().reduce(0, +))")
    } else {
        for n in arr {
            if n == arr.max() {
                continue
            }
            withMin.append(n)
        }

        for n in arr {
            if n == arr.min() {
                continue
            }
            withMax.append(n)
        }
        
        print("\(withMin.reduce(0, +)) \(withMax.reduce(0, +))")
    }
}
