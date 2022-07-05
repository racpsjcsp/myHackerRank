import Foundation

let grades = [4,99,67,38,33]

func grading(grades: [Int]) -> [Int] {
    let _grades = grades
    var finalGrades = [Int]()
    var remainder = 0
    
    for i in _grades {
        if i % 5 == 0 {
            finalGrades.append(i)
        } else {
            remainder = i % 5
            if i+2 < 40 {
                finalGrades.append(i)
            } else if i+2 <= 100 || i+1 <= 100 {
                if remainder == 4 {
                    finalGrades.append(i+1)
                } else if remainder == 3 {
                    finalGrades.append(i+2)
                } else if remainder == 2 {
                    finalGrades.append(i)
                } else if remainder == 1 {
                    finalGrades.append(i)
                }
            }
        }
    }
    
    return finalGrades
}

grading(grades: grades)
