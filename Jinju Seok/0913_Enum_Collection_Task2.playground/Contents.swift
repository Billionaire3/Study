
///=============================================================
//1.
//자연수를 입력받아 원래 숫자를 반대 순서로 뒤집은 숫자를 반환하는 함수
//ex) 123 -> 321 , 10293 -> 39201
func reverseNum(inputNum : Int) -> Int? {
    guard inputNum > 0 else {
        return nil
    }
    let converter : String = String(inputNum)
    
    let temp : Int! = Int(String(converter.reversed()))
    return temp
}
print(reverseNum(inputNum: 72) ?? 0)

//func reverseNum(inputNum : Int) -> Int? {
//    guard inputNum > 0 else {
//        return nil
//    }
//
//    return Int(String(String(inputNum).reversed()))
//}
//print(reverseNum(inputNum: 36) ?? 0)




///=============================================================
//2.
//[2개의 자연수]와 [사칙연산(+, -, *, /) 값을 가진 하나의 enum 타입]을 입력받아 해당 연산을 수행하는 함수
//enum Arithmetic {
//    case addition, subtraction, multiplication, division
//}


enum Arithmetic {
    case addition
    case subtraction
    case multiplication
    case division
}
func fourFundamentalArithmeticOperations(num1 : Int, enumType : Arithmetic, num2 : Int) -> Any? {
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
print(fourFundamentalArithmeticOperations(num1: 1, enumType: .division, num2: 2) ?? 0)



///=============================================================
//3.
//정수 타입의 배열을 선언하고 해당 배열 요소 중 가장 큰 값을 반환하는 함수 만들기
//ex) [50, 23, 29, 1, 45, 39, 59, 19, 15] -> 59
var array = [50, 23, 29, 1, 45, 39, 59, 19, 15]
func returnMaxNumber() -> Int {
    //    let sortedArr = array.sorted() {$0 < $1}
    //    return sortedArr[sortedArr.endIndex-1]
    return array.sorted() {$0 > $1} [0]
}
print(returnMaxNumber())



///=============================================================
//4.
//정수 타입의 배열을 2개 선언하고 겹치는 숫자들로 만들어진 배열을 반환하는 함수
//ex) [1, 2, 4, 8, 9, 12, 13] , [2, 5, 6, 9, 13]  -->  [2, 9, 13]


var array1 = [1, 2, 4, 8, 9, 12, 13]
var array2 = [2, 5, 6, 9, 13]

func overLapNumberInArray() -> [Int] {
    var returnArray = [Int]()
    
    for temp in array1 {
        if array2.contains(temp) {
            returnArray.append(temp)
        }
    }
    return returnArray
}
print(overLapNumberInArray())


// Set으로 변환했을때 (arr 중복값 제거, but 순서 보장안됨)
//var array1 = [1, 2, 4, 8, 9, 12, 13]
//var array2 = [2, 5, 6, 9, 13]
//
//func overLapNumberInArray() -> [Int] {
//    var returnArray = [Int]()
//    let realArray1 = Set(array1)
//    let realArray2 = Set(array2)
//
//    for temp in realArray1 {
//        if realArray2.contains(temp) {
//            returnArray.append(temp)
//        }
//    }
//    return returnArray
//}
//print(overLapNumberInArray())




