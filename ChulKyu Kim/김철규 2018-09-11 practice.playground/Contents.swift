//: Playground - noun: a place where people can play

import Foundation

// 2018-09-11
/* ============= Question 1 ==================
 두 개의 정수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환) */

func attachNumber1(x: Int, y: Int) {
    print("\(x)"+"\(y)")
}
attachNumber1(x: 5, y: 39)

func attachNumber(x: Int, y: Int) {
    let eachNumber = (x, y)
    switch eachNumber {
    case let (x, y):
        print("\(x)" + "\(y)")
    }
}
attachNumber(x: 30, y: 40)


/* =============== Question 2 =================
 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수 */

func sameOrNot(x: String, y: String) {
    if x == y {
        print("same")
    } else {
        print("different")
    }
}
sameOrNot(x: "apple", y: "appie")


func comparision(x: Character, y: Character) {
    let eachCharacter = (x, y)
    switch eachCharacter {
    case let(x, y) where x == y :
        print("same")
    case let(x, y) where x != y :
        print("Not same")
    default: break
    }
}
comparision(x: "c", y: "c")


/* ================ Question 3 ===================
 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...) */

func yourGrade1(score: Double) -> String {
    if score >= 4.5 {
        print("A+")
        return "A+"
    } else if score >= 4.0 {
        print("A+")
        return "A+"
    } else {
        print("FFF")
        return "FFF"
    }
}

yourGrade1(score: 3.58)


func yourGrade(eachScore: Double) -> String {
    switch eachScore {
    case 4.5...:
        print ("A+")
        return "A+"
    case 4.0..<4.5:
        print("A")
        return "A"
    case 3.5..<4.0:
        print("B+")
        return "B+"
    default:
        print("FFFF")
        return "FFFF"
    }
}
yourGrade(eachScore: 4.5)

/* ================== Question 4 ==================
 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것) */

func dualORNegative1(x: Double, y: Double, z: Double) -> String {
    if x * y * z >= 0 {
        print("true")
        return "true"
    } else {
        print("false")
        return "false"
    }
}

dualORNegative1(x: 4.2, y: 93284.34, z: -37.1)


func dualOrNagative(x: Double, y: Double, z: Double) -> String {
    
    let threeNumber = (x, y, z)
    
    switch threeNumber {
    case let(x, y, z) where x * y * z > 0:
        print("True")
        return "True"
    case let(x, y, z) where x * y * z < 0:
        print("False")
        return "False"
    default:
        print("break")
        return "break"
    }
}

dualOrNagative(x: 5.5, y: -2.9, z: 173)


/* ================== Question 5 ====================
 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb") */

func whatMonth(thisMonth: Int) -> String {
    
    let month = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "July", "Aug", "Oct", "Sep", "Nov", "Dec"]
        if (thisMonth > 0) && (thisMonth < 13) {
        let x = (thisMonth - 1)
        let thisMonthIs = month[x]
        print(thisMonthIs)
        return thisMonthIs
        }
    print("input 1~12")
    return "input 1~12"
}

whatMonth(thisMonth: 13)


func calendar(month: Int) -> String {
    switch month {
    case 1:
        print("Jan")
        return "Jan"
    case 2:
        print("Feb")
        return "Feb"
    default:
        print("Nothing Special")
        return "Nothing Special"
    }
}

calendar(month: 2)
calendar(month: 1)
calendar(month: 4)

/* ======================== Question 6 =========================
 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년) */


func leapYear(year: Int) {
    switch year {
    case year where (year % 400 == 0) || (year % 4 == 0) && (year % 100 != 0):
        print(" \(year) year is leapYear")
    default:
        print(" \(year) year is not leapYear")
    }
}

leapYear(year: 2016)
leapYear(year: 40)
leapYear(year: 100)
leapYear(year: 400)


/* ==for , while , repeat - while 등을 골고루 활용하여 아래 문제들을 구현해보세요. ==
 ========================== 반복문 Question 1 =============================
 1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수 */

func multiTable(number: Int) {
    for i in 1...9 {
        let multi = i * number
        print("\(i) x \(number) is \(multi)")
    }
}
multiTable(number: 4)

/* ======================== 반복문 Question 2 ==============================
 정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수 */

func factorial(fNumber: Int) {
    var fac = fNumber
    for i in (1...(fNumber - 1)).reversed() {
        fac *= (fNumber - i)
        print(fac)
    }
}
factorial(fNumber: 5)

/* ======================= 반복문 Question 3 ================================
 정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수 */

func multifly(x: Int, y: Int) -> Int {
    var answer = 1
    for _ in 1...y {
        answer *= x
        print(answer)
    }
    return answer
}
multifly(x: 5, y: 4)






/* ======================= 반복문 Question 4 =================================
 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수 */

func addNumber(number: Int) -> Int {
    var add = 0
    for separate in "\(number)" {
        let makeInt = Int(String(separate))!
        add += makeInt
        print(add)
    }
    return add
}
addNumber(number: 456)


for i in "Hello" {
    print(i, terminator: " ")
}
//let a: Optional<Int>
//let b: Int
//a = nil
//b = nil










/* ======================= 반복문 Question 5 =================================
 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수 */

var x = 1
while x <= 100 {
    if x % 15 == 0 {
        print(x)
    }
    x += 1
}


/* ====================== 2018-09-11 과제 1 =============================
 2 이상의 정수를 입력받아, 소수인지 아닌지 판별하는 함수 */

func primeNumber(a: Int) {
    for i in 2..<a {
        if a % i == 0 {
            print("Not Prime Number")
            break
        } else {
            print("\(a) is Prime Number")
            break
        }
    }
}

primeNumber(a: 43)


/* ====================== 2018-09-11 과제 2 =============================
 정수를 입력받아 그 정수의 약수를 모두 출력하는 함수 */

func divisor(number: Int) {
    for i in 1...number {
        if number % i == 0 {
            print(i)
        }
    }
}

divisor(number: 48)



/* ====================== 2018-09-11 과제 2 =============================
 정수를 입력받아 피보나치 수열 중에서 입력받은 수에 해당하는 자리의 숫자를 반환하는 함수 */

var a = 0
var b = 1
var add = a + b

for i in 1...10 {
    
}



















