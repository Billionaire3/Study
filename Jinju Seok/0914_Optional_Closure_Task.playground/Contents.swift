
///==================================================================
//1. 이번주 과제로 풀었던 모든 함수를 클로저로 만들어 변수에 담고 실행시켜보기.
//단, 변수에 타입추론을 사용하지 않고 반드시 명시하고 함수를 담을 것.

/*      447번 라인까지 이 문제들!!!!
 17, 19, 20번 클로저 재귀 사용해야해서 일단 안함
 
 1. 이름을 입력 값으로 받아서 출력하는 함수
 2. 나이를 입력 값으로 받아서 출력하는 함수
 3. 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
 4. 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
 5. 정수를 두 개 입력받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
 6. 4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수
 7. 점수(문자 또는 숫자)를 입력받아 학점(A. B. C...)를 반환하는 함수 만들기(90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F)
 8. 점수(문자 또는 숫자)를 여러개 입력받아 평균에 대한 학점을 반환하는 함수 만들기(90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F)
 9. 두 개의 정수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)
 10. 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
 11. 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)
 12. 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것)
 13. 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")
 14. 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
 15. 정수 하나를 입력받아 그 정수의 약수를 모두 출력하는 함수
 16. 2 이상의 정수를 입력받아, 소수인지 아닌지를 판별하는 함수
 17. 정수를 입력받아 입력받은 수에 해당하는 자리의 피보나치 숫자를 반환하는 함수
 18. enum Month { case jan, feb } 를 정의하되 2월이 윤년인지 아닌지 정보를 전달할 수 있도록 구현
 19. on 과 off 값을 가진 enum 타입 RemoteControl 에 호출 시마다 on, off 값을 바꿔줄 수 있는 함수 구현
 20. 각 케이스별로 연산을 수행하고 그 값을 반환하는 evalue 함수 구현
 21. celcius, fahrenheit, kelvin 온도 3가지 케이스를 가진 Temperature enum 타입을 정의하고, 각 온도를 섭씨 온도로 변환해주는 toCelcius() 함수를 구현
 22. 자연수를 입력받아 원래 숫자를 반대 순서로 뒤집은 숫자를 반환하는 함수
 23. [2개의 자연수]와 [사칙연산(+, -, *, /) 값을 가진 하나의 enum 타입]을 입력받아 해당 연산을 수행하는 함수
 24. 정수 타입의 배열을 선언하고 해당 배열 요소 중 가장 큰 값을 반환하는 함수 만들기
 25. 정수 타입의 배열을 2개 선언하고 겹치는 숫자들로 만들어진 배열을 반환하는 함수
 */


//1. 이름을 입력 값으로 받아서 출력하는 함수
let printName = { (name: String) in
    print(name)
}
printName("석진주")


//2. 나이를 입력 값으로 받아서 출력하는 함수
let printAge = { (age: Int) in
    print(age)
}
printAge(25)


//3. 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
let printIntroduce = { (name: String, age: Int) in
    print("안녕하세요. 제 이름은 \(name)입니다. 제 나이는 \(age)살 입니다. ")
}
printIntroduce("석진주", 25)


//4. 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
let multiplesOfTwo = {(integer: Int) -> Bool in
    return 0 == ( integer % 2 )
}
print(multiplesOfTwo(10))
print(multiplesOfTwo(7))


//5. 정수를 두 개 입력받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
// 기본값 지정이 불가능한듯..
let isMultiplication = {(integer1: Int, integer2: Int) -> Int in
    return integer1 * integer2
}
print(isMultiplication(2, 7))
print(isMultiplication(3, 8))


//6. 4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수
let averageScore = {(subject1 : Int, subject2 : Int, subject3 : Int, subject4 : Int) -> Float in
    return (Float)(subject1 + subject2 + subject3 + subject4) / 4.0
}
print(averageScore(100, 100, 100, 100))
print(averageScore(50, 73, 96, 86))


//7. 점수(문자 또는 숫자)를 입력받아 학점(A. B. C...)를 반환하는 함수 만들기(90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F)
let getGrades = {(score : String) -> String in
    let iScore : Int? = Int(score)
    
    guard let realScore = iScore else { return "숫자로 변환 가능한 문자열 대입이 필요합니다. e.g. \"70\" "}
    
    if realScore >= 90 {
        return "A"
    }
    else if realScore >= 80 {
        return "B"
    }
    else if realScore >= 70 {
        return "C"
    }
    else {
        return "F"
    }
}

print(getGrades("90"))
print(getGrades("구십"))



//8. 점수(문자 또는 숫자)를 여러개 입력받아 평균에 대한 학점을 반환하는 함수 만들기(90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F)
let totalGrades = { (subScore : Int...) -> String in
    var totalCount : Int = 0
    var totalScore : Int = 0
    for score in subScore {
        totalCount += 1
        totalScore += score
    }
    let averageScore : Float = Float(totalScore) / Float(totalCount)
    
    if averageScore >= 90.0 {
        return "A"
    }
    else if averageScore >= 80.0 {
        return "B"
    }
    else if averageScore >= 70.0 {
        return "C"
    }
    else {
        return "F"
    }
}

print(totalGrades(73, 91, 83))

//9. 두 개의 정수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)
let connectInt = {(integer1 : Int, integer2 : Int) in
    let convertIntToString1 : String = String(integer1)
    let convertIntToString2 : String = String(integer2)
    
    let returnString : String = String(convertIntToString1) + String(convertIntToString2)
    print(returnString)
}

connectInt(15, 2)




//10. 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
let isEqual = {(string1 : String, string2 : String) -> Bool in
    return (string1 == string2)
}

print(isEqual("abc", "def"))




//11. 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)
let getGrade = { (score : Double) -> String in
    switch score {
    case 4.5 :
        return "A+"
    case 4.0..<4.5 :
        return "A"
    case 3.5..<4.0 :
        return "B+"
    case 3.0..<3.5 :
        return "B"
    case 2.5..<3.0 :
        return "C+"
    case 2.0..<2.5 :
        return "C"
    case 1.5..<2.0 :
        return "D+"
    default:
        return "F"
    }
}
print(getGrade(3.8))


//12. 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것)
let isMultiplication2 = {(num1 : Double, num2 : Double, num3 : Double) -> Bool in
    let multiplication : Double = Double(num1) * Double(num2) * Double(num3)
    switch multiplication {
    case multiplication where multiplication > 0 :
        return true
    default:
        return false
    }
}
print(isMultiplication2(-11, 7, 1))




//13. 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")
let connectString = {(intMonth : Int) -> String in
    let monthString = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    
    switch intMonth {
    case intMonth where (0 < intMonth) && (intMonth <= monthString.count) :
        return monthString[intMonth - 1]
    default:
        return "1 ~ 12 사이의 수를 입력하세요."
    }
}
print(connectString(3))



//14. 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
let leapYear = {(year : Int) -> String in
    switch year {
    case year where 0 == (year % 400) || ( 0 == (year % 400) && 0 != (year % 100) ) :
        return "윤년"
    default:
        return "평년"
    }
}
print(leapYear(2018))


//15. 정수 하나를 입력받아 그 정수의 약수를 모두 출력하는 함수
let PrintDivisor = {(myInt: Int) in
    var arr1 : [Int] = []
    for temp in 1...myInt {
        if (0 == myInt % temp) {
            arr1.append(temp)
        }
    }
    print(arr1)
}
PrintDivisor(18)



//16. 2 이상의 정수를 입력받아, 소수인지 아닌지를 판별하는 함수
let isThisPrimeNumber = {(inputValue: Int) in
    guard (inputValue > 1) else { return print("2 이상의 정수를 입력하세요. ") }
    for temp in 2..<inputValue {
        if (0 == inputValue % temp) {
            print("소수가 아님")
            return
        }
    }
}
isThisPrimeNumber(20)



//17. 정수를 입력받아 입력받은 수에 해당하는 자리의 피보나치 숫자를 반환하는 함수
//func getFibonacciNum(label inputNum: Int) -> Int? {
//    guard inputNum >= 0 else { return nil }
//
//    if inputNum <= 1 {
//        return inputNum
//    }
//
//    if let result1 = getFibonacciNum(label: inputNum - 1),
//        let result2 = getFibonacciNum(label: inputNum - 2) {
//        return result1 + result2
//    } else {
//        return nil
//    }
//}
//
//print(getFibonacciNum(label: 3))


//???
//let getFibonacciNum = {(inputNum: Int) -> Int? in
//    guard inputNum >= 0 else { return nil }
//
//    if inputNum <= 1 {
//        return inputNum
//    }
//
//    if let result1 = getFibonacciNum(inputNum - 1),
//        let result2 = getFibonacciNum(inputNum - 2) {
//        return result1 + result2
//    } else {
//        return nil
//    }
//}
//
//print(getFibonacciNum(3))


//18. enum Month { case jan, feb } 를 정의하되 2월이 윤년인지 아닌지 정보를 전달할 수 있도록 구현
enum Month {
    case jan
    case feb ( Bool )
}

let leapYear2 = {(year : Int) -> Bool in
    switch year {
    case year where 0 == (year % 400) || ( 0 == (year % 400) && 0 != (year % 100) ) :
        return true
    default:
        return false
    }
}
let qEnum = {(year : Int) -> Month in
    let returnValue: Month = .feb(leapYear2(year) )
    return returnValue
}

print(qEnum(300))


//19. on 과 off 값을 가진 enum 타입 RemoteControl 에 호출 시마다 on, off 값을 바꿔줄 수 있는 함수 구현
enum RemoteControl {
    case on, off
    
    mutating func turnSwitch()
    {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var remoteControl = RemoteControl.on

remoteControl.turnSwitch()
remoteControl.turnSwitch()


//20. 각 케이스별로 연산을 수행하고 그 값을 반환하는 evalue 함수 구현
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case .number(let value) :
        return value
        
    case .addition(let firstElem, let secondElem) :
        return evaluate(firstElem) + evaluate(secondElem)
        
    case .multiplication(let firstElem, let secondElem) :
        return evaluate(firstElem) * evaluate(secondElem)
        
    }
}
let numberValue1 = ArithmeticExpression.number(5)
let numberValue2 = ArithmeticExpression.number(4)
let additionValue = ArithmeticExpression.addition(ArithmeticExpression.number(100), ArithmeticExpression.number(10))
let multiplicationValkue = ArithmeticExpression.multiplication(additionValue, ArithmeticExpression.number(2))

print(evaluate(numberValue1))
print(evaluate(numberValue2))
print(evaluate(additionValue))


//21. celcius, fahrenheit, kelvin 온도 3가지 케이스를 가진 Temperature enum 타입을 정의하고 각 케이스에는 Double 타입의 Associated Value 를 받은뒤 각 온도를 섭씨 온도로 변환해주는 toCelcius() 함수를 구현
enum Temperature {
    case celcius (Double)       //섭씨
    case fahreheit (Double)     //화씨
    case kelvin (Double)        //켈빈
}

var f = Temperature.fahreheit(57)

let toCelcius = {(temperature: Temperature) -> Double in
    switch temperature {
    case .celcius(let cel):
        return cel
    case .fahreheit(let fa) :
        return (fa - 32) * 5 / 9
    case .kelvin(let kel) :
        return kel + 273
    }
}

print(toCelcius(f))

//22. 자연수를 입력받아 원래 숫자를 반대 순서로 뒤집은 숫자를 반환하는 함수
let reverseNum = {(inputNum : Int) -> Int? in
    guard inputNum > 0 else {
        return nil
    }
    let converter : String = String(inputNum)
    
    let temp : Int! = Int(String(converter.reversed()))
    return temp
}
print(reverseNum(72) ?? 0)



//23. [2개의 자연수]와 [사칙연산(+, -, *, /) 값을 가진 하나의 enum 타입]을 입력받아 해당 연산을 수행하는 함수
enum Arithmetic {
    case addition
    case subtraction
    case multiplication
    case division
}
let fourFundamentalArithmeticOperations = {(num1 : Int, enumType : Arithmetic, num2 : Int) -> Any? in
    guard num1 > 0, num2 > 0 else {
        return nil
    }
    switch enumType {
    case .addition:
        return num1 + num2
    case .subtraction:
        return num1 - num2
    case .multiplication:
        return num1 * num2
    case .division:
        return Double(Double(num1) / Double(num2))
    }
}
print(fourFundamentalArithmeticOperations(1, .division, 2) ?? 0)


//24. 정수 타입의 배열을 선언하고 해당 배열 요소 중 가장 큰 값을 반환하는 함수 만들기
var array = [50, 23, 29, 1, 45, 39, 59, 19, 15]
let returnMaxNumber = {() -> Int in
    return array.sorted() {$0 > $1} [0]
}
print(returnMaxNumber())


//25. 정수 타입의 배열을 2개 선언하고 겹치는 숫자들로 만들어진 배열을 반환하는 함수
var array1 = [1, 2, 4, 8, 9, 12, 13]
var array2 = [2, 5, 6, 9, 13]

let overLapNumberInArray = {() -> [Int] in
    var returnArray = [Int]()
    
    for temp in array1 {
        if array2.contains(temp) {
            returnArray.append(temp)
        }
    }
    return returnArray
}
print(overLapNumberInArray())



///==================================================================
///==================================================================
///==================================================================
///==================================================================
///==================================================================
///==================================================================
///==================================================================

//2. 아래 두 클로저를 Syntax Optimization을 이용하여 코드를 최대한 줄여보기
let someClosure = { (s1: String, s2: String) -> Bool in
    return s1 > s2
}

let otherClosure = { (values: [Int]) -> Int in
    return values.count
}

print(someClosure("B", "A"))
print(otherClosure([1, 4, 2, 6]))



///==================================================================
//3. 1에서 100까지 Int값으로 구성된 배열을 필터링을 하여 새 배열을 반환하는 함수를 만들고자 한다.
//Int를 하나 입력받고 Bool타입의 값을 반환하는 함수로 만들고, 함수를 호출할 때 적절한 클로저를
//넣어주어 아래와 같은 조건으로 필터링된 배열을 반환받을 수 있도록 구현
//
//- 짝수만 나오도록 필터링
//- 3의 배수만 나오도록 필터링
let evenClosure = { (valueOfIndex: Int) -> Bool in
    return (0 == valueOfIndex % 2)
}

let threeMultipleClosure = { (valueOfIndex: Int) -> Bool in
    return (0 == valueOfIndex % 3)
}

func filter(isIncluded: (Int) -> Bool) -> [Int] {
    var returnArr = [Int]()
    let firstArr = [Int](1...100)
    
    for temp in firstArr {
        if isIncluded(temp) {
            returnArr.append(temp)
        }
    }
    return returnArr
}

print(filter(isIncluded: evenClosure))
print(filter(isIncluded: threeMultipleClosure))



///==================================================================
//4. 3개의 옵셔널타입의 문자열을 입력받아 옵셔널을 추출한 뒤 3개의 문자를 하나의 문자로 합쳐 반환하는 함수
//
func getString(str1: String?, str2: String?, str3: String?) -> String {
    var oneString: String = ""
    
    if let first: String = str1{
        oneString += first
    }   else {
        print("첫번째 문자열이 nil값입니다.")
    }
    
    if let second: String = str2{
        oneString += second
    }   else {
        print("두번째 문자열이 nil값입니다.")
    }
    
    if let third: String = str3{
        oneString += third
    }   else {
        print("세번째 문자열이 nil값입니다.")
    }
    
    return oneString
}

print(getString(str1: "안녕", str2: "나는", str3: "진주야"))




