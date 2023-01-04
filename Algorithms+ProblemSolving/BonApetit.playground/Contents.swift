import Foundation

/*
 https://www.hackerrank.com/challenges/bon-appetit/problem?isFullScreen=true
 */

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    var billList = bill
    billList.remove(at: k)
    
    let totalAna = billList.reduce(0, +) / 2
    if b == totalAna {
        print("Bon Appetit")
    } else {
        print(abs(totalAna - b))
    }
}

bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 7)
