//: Playground - noun: a place where people can play

import Foundation

/* =========================== 과제 1 ============================
    1. 이번주 과제로 풀었던 모든 함수를 클로저로 만들어 변수에 담고 실행시켜보기.
    단, 변수에 타입추론을 사용하지 않고 반드시 명시하고 함수를 담을 것.  */







/* =========================== 과제 2 ============================
 2. 아래 두 클로저를 Syntax Optimization을 이용하여 코드를 최대한 줄여보기 */

let someClosure: (String, String) -> Bool = { ($0, $1)
    let isAscending: Bool
    if $0 > $1 {
        isAscending = true
    } else {
        isAscending = false
    }
    return isAscending
}

//let someClosure: (String, String) -> Bool = { (s1: String, s2: String) -> Bool in
//    let isAscending: Bool
//    if s1 > s2 {
//        isAscending = true
//    } else {
//        isAscending = false
//    }
//    return isAscending
//}

let otherClosure: ([Int]) -> Int = { [$0]
    var count: Int = 0
    
    for _ in $0 {
        count += 1
    }
    return count
}

//let otherClosure: ([Int]) -> Int = { (values: [Int]) -> Int in
//    var count: Int = 0
//
//    for _ in values {
//        count += 1
//    }
//    return count
//}


/* ============================= 과제 3 ====================================
 3. 1에서 100까지 Int값으로 구성된 배열을 필터링을 하여 새 배열을 반환하는 함수를 만들고자 한다.
Int를 하나 입력받고 Bool타입의 값을 반환하는 함수로 만들고, 함수를 호출할 때 적절한 클로저를
넣어주어 아래와 같은 조건으로 필터링된 배열을 반환받을 수 있도록 구현
 
 - 짝수만 나오도록 필터링
 - 3의 배수만 나오도록 필터링                                              */




var oneHundred = [Int]()
oneHundred += 1...100
var evens = oneHundred.filter {$0 % 2 == 0}
var thirds = oneHundred.filter {$0 % 3 == 0}
evens
thirds


//for num in oneHundred {
//    if num % 2 == 0 {
//        even.append(num)
//    }
//}
//
//even

//for num in oneHundred {
//    if num % 3 == 0 {
//        third.append(num)
//    }
//}
//third

var isIncluded: (Int) -> Bool = { (x: Int) -> Bool in
    return x % 2 == 0
}




//func filter(isIncluded: (Int) -> Bool ) -> [Int] {
//    return even.append(isIncluded)
//}







//func filter(isIncluded: (Int) -> Bool) -> [Int] {
//
//    // implementation
//}


//filter(isIncluded: (Int) -> Bool)

//    - 짝수만 나오도록 필터링
//        - 3의 배수만 나오도록 필터링


//func filter(isIncluded: (Int) -> Bool) -> [Int] {
//
//    // implementation
//}
//
//
//filter(isIncluded: (Int) -> Bool)





/* ================================ 과제 4 =================================
 4. 3개의 옵셔널타입의 문자열을 입력받아 옵셔널을 추출한 뒤 3개의 문자를 하나의 문자로 합쳐 반환하는 함수 */

func getString(_ str1: String?, _ str2: String?, _ str3: String?) -> String {
    
    if let murge1 = str1  {
        if let murge2 = str2 {
            if let murge3 = str3 {
               return "\(murge1) \(murge2) \(murge3)"
            }
        }
    }
    return "It doesn't have value!"
}

getString("apple", "banana", "coconut")
getString("Hello", "I'm Maru", "2 Years Old")

/* =================================== closure study ================================= */

var str = "Hello, playground"

let cities = ["Seoul", "ToKyo", "Sydney"]

func test(a: String) -> String {
    
    return "Beautiful" + a
}

test(a: cities[0])

let newCities = [test(a: cities[0]), test(a: cities[1]), test(a: cities[2])]


let newCities1 = cities.map(test)

let newCities2 = cities.map {a in
    "Beatiful " + a
}















