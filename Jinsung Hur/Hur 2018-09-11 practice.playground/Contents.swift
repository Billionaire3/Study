//: Playground - noun: a place where people can play

import UIKit

print(" *** 두 개의 정수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환) ***")
func continutyNum(num1: Int, num2: Int) {
    switch (num1, num2) {
    case let (num1, num2) where (num1 > 0 && num2 > 0):
        print("\(num1)\(num2)")
    default:
        print("Can't operate")
    }
}
continutyNum(num1: 1, num2: 7)
continutyNum(num1: -1, num2: 3)

func continutyNum2(lhs: Int, rhs: Int) -> String {
    if lhs > 0 && rhs > 0 {
    return ("\(lhs)\(rhs)")
    } else {
        return ("Can't operate")
        }
    }
continutyNum2(lhs: -234, rhs: 0)
continutyNum2(lhs: 100, rhs: 50)

print("\n *** 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수 ***")
func sameCharacter(ani1: String, ani2: String){
    switch (ani1, ani2) {
    case let (ani1, ani2) where ani1 == ani2 :
        print("\(ani1) and \(ani2) are same")
    case let (ani1, ani2) where ani1 != ani2 :
        print("\(ani1) and \(ani2) are not same")
    default:
        break
    }
}
sameCharacter(ani1: "Tiger", ani2: "Rabbit")
sameCharacter(ani1: "Tiger", ani2: "Tiger")

func sameCharacter2(lhs: String, rhs:String) -> Bool{
    return lhs == rhs
}
sameCharacter2(lhs: "Tiger", rhs: "Tiger")

print("\n *** 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...) ***")
func gradeChecker(point: Double) -> String{
    let result : String
    switch point {
    case let point where point >= 4.5 :
        result = "A+"
    case let point where point < 4.5 && point >= 4.0 :
        result = "A"
    case let point where point < 4.0 && point >= 3.5:
        result = "B+"
    case let point where point < 3.5 && point >= 3.0:
        result = "B"
    default :
        result = ("Lower then B")
    }
    print("Your point is", point, "Your grade is", result)
    return result
}
gradeChecker(point: 4.5)
gradeChecker(point: 2.1)

func gradeChecker2(score: Double) -> String{
    switch score {
    case 4.5 : return "A+"
    case 4.0 ..< 4.5 : return "A"
    case 3.5 ..< 4.0 : return "B+"
    case 3.0 ..< 3.5 : return "B"
    case 0 ..< 3.0 : return "Lower then B"
    default : return "Can't operate"
    }
}
gradeChecker2(score: 0.131241)


print("\n *** 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것) ***")
func positiveNegative(num1:Double, num2:Double, num3:Double) -> Bool {
    let result : Bool
    let multipleNumber = num1 * num2 * num3

    switch multipleNumber {
    case let value where value >= 0 :
        result = true
    default :
        result = false
    }
    print(result)
    return result
}
positiveNegative(num1: -1, num2: 5, num3: 10)
positiveNegative(num1: 7, num2: 5, num3: 10)

func positiveNegative2(_ num1:Double, _ num2:Double, _ num3:Double) -> Bool {
    let multiNum = num1 * num2 * num3
    switch multiNum {
    case multiNum where multiNum >= 0 : return true
    case multiNum where multiNum < 0 : return false
    default: return false
    }
}
positiveNegative2(11, 0, 313)
    
print("\n *** 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = Jan, , 2 = Feb) ***")
func englishCalendar(monthNum : Int) -> String {
    let result : String
    switch monthNum {
    case let value where value == 1 :
        result = "Jan"
    case let value where value == 2 :
        result = "Feb"
    default :
        result = "not decided"
    }
    print(result)
    return result
}
englishCalendar(monthNum: 2)

func englishCalender2(monthNum :Int) -> String {
    switch monthNum {
    case 1 : return "Jan"
    case 2 : return "Feb"
    default : return "I don't know"
    }
}
englishCalender2(monthNum: 3)

print("\n *** 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년) ***")
func leapYear(_ thisYear : Int) -> String {
    let result : String
    switch thisYear {
        case let value where value % 400 == 0 || value % 4 == 0 && value % 100 != 0 :
        result = "This year is leap year"
    default :
        result = "This year is not leap year"
    }
    print(result)
    return result
}
leapYear(2020)


print("\n *** for 문을 이용하여 3 의 10 제곱에 대한 결과값을 표현하는 코드 구현 ***")

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print(answer)


print("\n *** for 문을 이용하여 10부터 1까지 내림차순으로 출력하는 코드 구현 ***")

for num in (1...10).reversed() {
    print(num, terminator: " ") // terminator : 횡으로 결과 표시
}


print("\n *** 1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수 ***")
func multiplication1 (_ num1:Int){
    for index in 1...9{
        print(num1 * index, terminator: " ")
    }
}
multiplication1(5)
print("\n")


var times1 = 1
func multiplication2 (num2:Int){
    while times1 <= 9 {
        print(num2 * times1, terminator: " ")
        times1 += 1
    }
}
multiplication2(num2: 8)
print("\n")


var times2 = 1
func multiplication3 (num3:Int){
    repeat {
        print(num3 * times2, terminator: " ")
        times2 += 1
    } while times2 <= 9
}
multiplication3(num3: 7)
print("\n")


print("\n *** 정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수 ***")

var sumF1 = 1
func factorial1(numF1:Int) {
    for i in 1...numF1 {
        sumF1 *= i
    }
    print("\(numF1)의 factorial 값은 \(sumF1)")
}
factorial1(numF1: 6)


var sumF2 = 1
var facNum = 1
func factorial2(numF2:Int) {
    while facNum <= numF2 {
        sumF2 *= facNum
        facNum += 1
    }
    print("\(numF2)의 팩토리얼 값은 \(sumF2)")
}
factorial2(numF2: 6)


var sumF3 = 1
var facNum2 = 1
func factorial3(numF3:Int) {
    repeat{ sumF3 *= facNum2
            facNum2 += 1
    } while facNum2 <= numF3
    print(sumF3)
}
factorial3(numF3: 6)


print("\n *** 정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수 ***")

var sumCM = 1
var cMc = 1
func countMulti(num1:Int, num2:Int) -> Int{
    while cMc <= num2 {
        sumCM *= num1
        cMc += 1
    }
    return sumCM
}
print(countMulti(num1: 5, num2: 4))


var sumCM2 = 1
func countMuli2(num1:Int, num2:Int) -> Int{
    for _ in 1...num2 {
        sumCM2 *= num1
    }
    return sumCM2
}
print(countMuli2(num1: 5, num2: 3))


print("\n *** 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수 ***")
func cipherSum(num : Int) -> Int {
    var sum = 0
    for seperate in "\(num)" {        // 당췌.... 모르겠다...
        let makeInt = Int(String(seperate))! // 여기도 모르겠다...
        sum += makeInt
    }
    return sum
}
cipherSum(num: 12335647585676)

func cipherSum2(_ num : Int) -> Int {
    var sum = 0
    var dividedNum = num
    while dividedNum != 0 {
        sum += dividedNum % 10
        dividedNum /= 10
    }
    return sum
}
cipherSum2(999)


print("\n *** 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수 ***")
func com3and5(_ firstNum:Int, _ secondNum:Int) {
    for i in 1...100 {
        if i % firstNum == 0 && i % secondNum == 0 {
        print(i)
        }
    }
}
com3and5(4, 7)


print("\n *** 2 이상의 자연수를 입력받아, 소수인지 아닌지를 판별하는 함수 ***")
func primeNum(num:Int) -> Bool {
    for i in 2..<num {
        if num % i == 0 {
           return false
        }
    }
    return true
}
primeNum(num:19)


print("\n *** 자연수를 입력받아 그 수의 약수를 모두 출력하는 함수 ***")
func submultiple(_ num:Int) {
    for i in 1...num {
        if num % i == 0 {
        print(i)
        }
    }
}
submultiple(99)


print("\n *** 자연수를 입력받아 피보나치 수열 중에서 입력받은 수에 해당하는 자리의 숫자를 반환하는 함수 (입력된 숫자가 4면 0, 1, 1, 2, 3, 5 ... 에서 4번째 위치인 2 출력. 참고로 피보나치 수열은 이전 두 수의 합이 다음 수가 되는 수열) ***")


func fiboList(num:Int) -> Int{
    if num == 1 {
        return num
    }
    if num == 2 {
        return num
    }
    var n1 = 0
    var n2 = 1
    var n3 = 0
    
    for _ in 1...num-2 {
     n3 = n1 + n2
     n1 = n2
     n2 = n3
}
    return n3
}
fiboList(num:1)

