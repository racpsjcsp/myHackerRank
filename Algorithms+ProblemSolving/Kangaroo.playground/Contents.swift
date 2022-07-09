import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    var _x1 = x1
    var _x2 = x2
    
    let maxDistance = 10000
    
    for _ in 0...maxDistance {
    
        if _x1 == _x2 {
            return "YES"
        }
        
        _x1 += v1
        _x2 += v2
    }
    
    return "NO"
}

kangaroo(x1: 2, v1: 1, x2: 1, v2: 2)
kangaroo(x1: 0, v1: 3, x2: 4, v2: 2)
kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)

