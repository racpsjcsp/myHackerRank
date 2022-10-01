import Cocoa

/*
 https://www.hackerrank.com/challenges/the-birthday-bar/problem
 */

func birthday(s: [Int], d: Int, m: Int) -> Int {
    var output = 0
    var sArray = s
    
    if s.count == 1 {
        return 1
    } else {
        for _ in s {
            while sArray.count >= m {
                if sArray.prefix(m).reduce(0, +) == d {
                    output += 1
                }
                sArray.removeFirst(1)
            }
        }
    }
    
    return output
}

print(birthday(s: [5, 5, 3, 2, 2, 2, 1, 2, 5, 3, 5, 5, 4, 3, 3, 5], d: 13, m: 3))
