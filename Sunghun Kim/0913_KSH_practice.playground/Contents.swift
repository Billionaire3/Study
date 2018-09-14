//: Playground - noun: a place where people can play

import UIKit


/*:
 ---
 ### Question
 - enum Month { case jan, feb } 를 정의하되 2월이 윤년인지 아닌지 정보를 전달할 수 있도록 구현
 ---
 */
//Q> enum 안에 func을 넣어서 할수는 없나?

enum Month {
    case jan(String)
    case feb(a: Int)
}

func checkLeapYear(thisYear: Month) {
    switch thisYear {
    case let .feb(a) where (a % 400 == 0) || (a % 4 == 0) && (a % 100 != 0) :
        print ("\(a) feb은 윤년")
    case let .feb(a) where !(a % 400 == 0) || (a % 4 == 0) && (a % 100 != 0) :
        print ("\(a) feb은 not 윤년")
    default:
        print ("Error")
    }
}
checkLeapYear(thisYear: .feb(a: 6))



/*:
 ---
 ### Question
 - on 과 off 값을 가진 enum 타입 RemoteControl 에 호출 시마다 on, off 값을 바꿔줄 수 있는 함수 구현
 ---
 */

enum RemoteControl {
    case on
    case off
    
    mutating func toggle() {
        switch self{
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
} //Q>self 대신에 RemoteControl을 넣어주면 안되나?

var remoteControl = RemoteControl.on

remoteControl.toggle() //off
remoteControl.toggle() //on




/*:
 ---
 ### Question
 - 각 케이스별로 연산을 수행하고 그 값을 반환하는 evalue 함수 구현
 ---
 */

//func evaluate(_ expression: ArithmeticExpression) -> Int {
//  switch expression {
//
//    case .number(let value)
//        return value
//  }
//}



/***************************************************
 celcius, fahrenheit, kelvin 온도 3가지 케이스를 가진 Temperature enum 타입을 정의
 각 케이스에는 Double 타입의 Associated Value 를 받도록 함
 각 온도를 섭씨 온도로 변환해주는 toCelcius() 함수를 구현
 섭씨 = (화씨 - 32) * 5 / 9
 섭씨 = 켈빈 + 273
 ***************************************************/

enum Temperature {
    case celcius, fahrenheit, kelvin
    func toCelcius() -> Double {
        return 3
    }
}



//1.
//자연수를 입력받아 원래 숫자를 반대 순서로 뒤집은 숫자를 반환하는 함수
//ex) 123 -> 321 , 10293 -> 39201
//

//func number(num: Int) {
//    var numToArray: [Int] = []
//    while num % 10 != 0 {
//        var left: Int = num % 10
//        numToArray.append(left)
//        left = num / 10
//    }
//}
//number(num: 215)

func revers(num: Int) {
    
    let stringNum = String(num)
    let reverseNum = stringNum.reversed()
    let stringNum2 = String(reverseNum)
    
    print(Int(stringNum2)!)
    
}
revers(num: 512)


//2.
//2개의 자연수와 사칙연산(+, -, *, /) 값을 가진 하나의 enum 타입을 입력받아 해당 연산을 수행하는 함수
enum Arithmetic {
    case addition(num1: Int, num2: Int)
    case subtraction
    case multiplication
    case division
    
    func calcu() {
        switch self {
        case .addition:
            return ()
        case .subtraction:
            return ()
        case .multiplication:
            return ()
        case .division:
            return ()
        }
    }
}
Arithmetic.calcu(.addition(num1: 2, num2: 3))



//3.
//정수 타입의 배열을 선언하고 해당 배열 요소 중 가장 큰 값을 반환하는 함수 만들기
//ex) [50, 23, 29, 1, 45, 39, 59, 19, 15] -> 59



func biggestNumber(nums: Int...) {
    var numbers: [Int] = []
    for i in nums {
        numbers.append(i)
    }
    let sortedNumbers = numbers.sorted(by: >= )
    //    let reveredNumbers = sortedNumbers.reversed()  Q>이거는 왜 안되나
    print(sortedNumbers[0])
}

biggestNumber(nums: 33, 55, 1, 5)


//4.
//정수 타입의 배열을 2개 선언하고 겹치는 숫자들로 만들어진 배열을 반환하는 함수
//ex) [1, 2, 4, 8, 9, 12, 13] , [2, 5, 6, 9, 13]  -->  [2, 9, 13]

let groupA: [Int] = [1, 2, 3, 10, 99, 77]
let groupB: [Int] = [2, 3, 4, 77]

func compareGroup(a: [Int], b: [Int]) {
    var newGroup: [Int] = []
    for i in groupA {
        for j in groupB {
            if i == j {
                newGroup.append(i)
            }
        }
    }
    print(newGroup)
}
compareGroup(a: groupA, b: groupB)





