import Cocoa

/*
 https://www.hackerrank.com/challenges/day-of-the-programmer
 */

func dayOfProgrammer(year: Int) -> String {
    var dayCounter = 0
    var isLeapYear = false
    var isJulianCalendar = false
    
    if year >= 1700 && year <= 1917 {
        if year.isMultiple(of: 4) {
            isJulianCalendar = true
        }
    }
    
    if year.isMultiple(of: 400) && year.isMultiple(of: 100) {
        isLeapYear = true
    } else if year.isMultiple(of: 4) && !year.isMultiple(of: 100) {
        isLeapYear = true
    } else {
        isLeapYear = false
    }
    
    if isLeapYear {
        dayCounter = 256 - 244
    } else {
        if year == 1918 {
            dayCounter = 256 - 230
        } else {
            dayCounter = 256 - 243
        }
    }
    
    if isJulianCalendar {
        dayCounter = 256 - 244
    }
    
    return "\(dayCounter).09.\(year)"
}

dayOfProgrammer(year: 1918)


