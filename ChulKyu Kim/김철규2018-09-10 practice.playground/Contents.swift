//: Playground - noun: a place where people can play

import Foundation

//practice
//============================== practice 1 ==================================

func name(_ name: String) {
    print(name)
}

name("maru")

//============================== practice 2 ==================================

func age(_ age: Int) {
    print(age)
}
age(2)

//============================== practice 3 ==================================

func introduce(name: String, age: Int) {
    print("Hello my name is \(name), I'm \(age) years old")
}
introduce(name: "Maru", age: 2)


//============================== practice 4 ==================================

func check2n(number: Int) -> String {
    if number % 2 == 0 {
        return "2의 배수"
    } else {
        return "2의 배수 X"
    }
}
check2n(number: 5 )
check2n(number: 4)

//============================== practice 5 ==================================

func multifly(number1: Double, number2: Double = 10) -> Double {
    return number1 * number2
}
multifly(number1: 5.2, number2: 2.3)
multifly(number1: 5)


//============================== practice 6 ==================================

func averageGrade(average grade: Double...) -> Double {
    var totalGrade = 0.0
    for total in grade {
        totalGrade += total
    }
    return totalGrade / Double(grade.count)
}

averageGrade(average: 60, 70, 90, 100)
averageGrade(average: 100, 78, 86, 99)


//============================== 과제 1 ==================================

func seperateByGrade(grade: Double) -> String {
    if grade >= 90 {
        return "A 학점"
    } else if grade >= 80 {
        return "B 학점"
    } else if grade >= 70 {
        return "C 학점"
    } else {
        return "FFFFF"
    }
}
seperateByGrade(grade: 94)
seperateByGrade(grade: 84)
seperateByGrade(grade: 74)
seperateByGrade(grade: 64)


//============================== 과제 2 ==================================

func totalSeperateByGrade(each grades: Double...) -> String {
    var totalGrades = 0.0
    for total in grades {
        totalGrades += total
    }
    let averageTotalGrades = totalGrades / Double(grades.count)
    if averageTotalGrades >= 90 {
        return "You got A"
    } else if averageTotalGrades >= 80 {
        return "You got B"
    } else if averageTotalGrades >= 70 {
        return "You got C"
    } else {
        return "FFFFFFFF"
    }
}
totalSeperateByGrade(each: 80, 70, 100, 89)
totalSeperateByGrade(each: 90, 89, 94, 93)





