//: Playground - noun: a place where people can play

import Foundation

/* nil - no set */
//변수, 상수에 nil 값 설정 불가
var name = "ChulKyu"
//  name = nil


// Optional 타입에만 nil 값 설정 가능
var age: Optional<Int>

var a: Int?
var b: Int
a = nil
//b = nil

var c: [Int]?
var d: [Int]
c = nil
//d = nil


/* Implicitly Unwrapped Optional ! */

let phone: Int? = 01023113125
print(phone)
type(of: phone)
////
let phoneNumber = phone!
print(phoneNumber)
type(of: phoneNumber)
//
//
let girlFriend: String? = nil
print(girlFriend)

//print(girlFriend!)


/* Optional Binding if let */

let myNumber: Int? = 01023113125
if let actualNumber = myNumber {
    print("안녕하세요, 김철규 번호는 \(actualNumber) 입니다.")
} else {
    print("이 번호는 없는 번호이니..")
}


let myAge: Int? = 31
if let amIOldOrNot = myAge, amIOldOrNot > 40 {
    print("당신의 나이는 \(amIOldOrNot), 당신은 늙었습니다")
} else {
    print("당신은 늙지 않았습니다")
}




/* Optional Chaining */

let array: [String]? = ["a", "b"]
//var isEmptyArray: Bool
//if let emptyOrNot = array, emptyOrNot.isEmpty {
//    isEmptyArray = true
//} else {
//    isEmptyArray = false
//}
//isEmptyArray

let isEmptyArray = array?.isEmpty == true

isEmptyArray



///* ================= 반복문 Question 4 ================
// 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수 */
//
//func addNumber(number: Int) -> Int {
//    var add = 0
//    for separate in String(number) {
//        let makeInt = Int(String(separate))!
//        add += makeInt
//        print(add)
//    }
//    return add
//}
//addNumber(number: 4892997293817379)
//
//
//for i in "Hello" {
//    print(i, terminator: " ")
//}

//String -> Int (nil)
//let int = 8347
//Int(int)
//let str = "hello"
//Int(str)









