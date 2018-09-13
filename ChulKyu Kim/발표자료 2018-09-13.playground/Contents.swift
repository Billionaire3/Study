//: Playground - noun: a place where people can play

import Foundation

/* ======================= 반복문 Question 4 =================================
 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수 */

func addNumber(number: Int) -> Int {
    var add = 0
    for separate in String(number) {
        let makeInt = Int(String(separate))!
        add += makeInt
        print(add)
    }
    return add
}
addNumber(number: 4892997293817379)


for i in "Hello" {
    print(i, terminator: " ")
}

//String -> Int (nil)
//let int = 8347
//Int(int)
//let str = "hello"
//Int(str)

//변수, 상수에 nil 값 설정 불가
//var name = "ChulKyu"
//    name = nil

//Optional 타입에만 nil 값 설정 가능
//let a: Optional<Int>
//let b: Int
//a = nil
//b = nil












