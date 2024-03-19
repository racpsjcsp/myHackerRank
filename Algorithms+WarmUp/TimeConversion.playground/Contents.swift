import Foundation

let s = "12:40:00AM"

func timeConversion(s: String) -> String {
    var isAM = false
    var finalString = ""
    let _s = s.dropLast(2)
    
    if s.contains("AM") {
        isAM = true
    } else {
        isAM = false
    }
    
    let startIndex = _s.index(s.startIndex, offsetBy: 2)
    let remainingString = String(_s[startIndex...])
    var value = Int(String(_s[..<startIndex]))
    
    if isAM {
        if value == 12 {
            value = 0
            if let value = value {
                finalString = "0\(value)\(remainingString)"
            }
        } else {
            return String(_s)
        }
    } else {
        if value == 12 {
            if let value = value {
                finalString = "\(value)\(remainingString)"
            }
        } else {
            if let value = value {
                finalString = "\(value + 12)\(remainingString)"
            }
        }
    }
    
    return finalString
}

timeConversion(s: s)

// 2

func timeConversion(s: String) -> String {
    guard let first = s.first else { return "" }
    guard let second = s.dropFirst().first else { return "" }
    guard let firstTwoDigits = Int("\(first)\(second)") else { return "" }
    
    var amTime = s.dropLast(2)
    if s.contains("AM") {
        if firstTwoDigits == 12 {
            return "0\(firstTwoDigits-12)\(amTime.dropFirst(2))"
        }
        return "\(amTime)"
    }
    
    var pmTime = s.dropLast(2)
    if s.contains("PM") {
        if firstTwoDigits < 12 {
            return "\(firstTwoDigits+12)\(amTime.dropFirst(2))"
        }
        return "\(pmTime)"
    }
    return ""
}
