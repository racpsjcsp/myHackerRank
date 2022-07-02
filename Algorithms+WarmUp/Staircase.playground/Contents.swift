import Foundation

func staircase(n: Int) -> Void {
    for i in stride(from: 0, to: n+1, by: +1) {
        if i == 0 {
            continue
        }
        print("\(String(repeating: " ", count: n-i))\(String(repeating: "#", count: i))")
    }
}
