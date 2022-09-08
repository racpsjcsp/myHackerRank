import Foundation

func getTotalX(a: [Int], b: [Int]) -> Int {
    var counter = 0
    
    for num in 1...100 {
        var shouldContinue = false
        
        for value in a {
            if num % value > 0 {
                shouldContinue = true
                break
            }
        }
        
        if shouldContinue {
            continue
        }
        
        for value in b {
            if value % num > 0 {
                shouldContinue = true
                break
            }
        }
        
        if shouldContinue {
            continue
        }
        
        counter += 1
    }
    
    return counter
}

getTotalX(a: [2,6], b: [34,36])
