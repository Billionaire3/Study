	
import UIKit


//================================================================================
//1. 이번주 과제로 풀었던 모든 함수를 클로저로 만들어 변수에 담고 실행시켜보기.
//단, 변수에 타입추론을 사용하지 않고 반드시 명시하고 함수를 담을 것.
//================================================================================
func reverseDigit(num: Int) -> Int {
    var reversedNumber = 0
    var num = num
    
    while num > 0 {
        reversedNumber = reversedNumber * 10 + num % 10
        num /= 10
        print(reversedNumber)
    }
    
    return reversedNumber
}
reverseDigit(num: 519)

//Q>(Int) -> Int 는 무슨 의미?? -----------------------------------------------------
let reverseClosure: (Int) -> Int = { (num: Int) -> Int in
    var reversedNumber = 0
    var num = num
    
    while num > 0 {
        reversedNumber = reversedNumber * 10 + num % 10
        num /= 10
        print(reversedNumber)
    }
    return reversedNumber
}
reverseClosure(123)



//================================================================================
//2. 아래 두 클로저를 Syntax Optimization을 이용하여 코드를 최대한 줄여보기
//================================================================================

let someClosure: (String, String) -> Bool = { (s1: String, s2: String) -> Bool in
    let isAscending: Bool
    if s1 > s2 {
        isAscending = true
    } else {
        isAscending = false
    }
    return isAscending
}

let thisClosure1 = { (s1: String, s2: String) in return s1 > s2 }

print(thisClosure1("B", "A"))
    
    
    
let otherClosure: ([Int]) -> Int = { (values: [Int]) -> Int in
    var count: Int = 0
    
    for _ in values {
        count += 1
    }
    return count
}
    
let thisClosure2 = { (values: [Int]) in return values.count }
    
print(thisClosure2([1,4,2,6]))

//================================================================================
//3. 1에서 100까지 Int값으로 구성된 배열을 필터링을 하여 새 배열을 반환하는 함수를 만들고자 한다.
//Int를 하나 입력받고 Bool타입의 값을 반환하는 함수로 만들고, 함수를 호출할 때 적절한 클로저를
//넣어주어 아래와 같은 조건으로 필터링된 배열을 반환받을 수 있도록 구현
//
//- 짝수만 나오도록 필터링
//- 3의 배수만 나오도록 필터링
//================================================================================

var someArray = Array(1...100)
var even = someArray.filter { $0 % 2 == 0 }
even
var thirds = someArray.filter{ $0 % 3 == 0 }
thirds
    
/*
func filter(isIncluded: (Int) -> Bool) -> [Int] {
    
    // implementation
}


filter(isIncluded: (Int) -> Bool)
    
//    - 짝수만 나오도록 필터링
//        - 3의 배수만 나오도록 필터링


func filter(isIncluded: (Int) -> Bool) -> [Int] {
    
    // implementation
}


filter(isIncluded: (Int) -> Bool)
*/



//================================================================================
//4. 3개의 옵셔널타입의 문자열을 입력받아 옵셔널을 추출한 뒤 3개의 문자를 하나의 문자로 합쳐 반환하는 함수
//================================================================================


func getString(str1: String?, str2: String?, str3: String?) -> String {
    var sum = ""
    
    if let first = str1{
        sum += first
    } else {
        print("1st is nil")
    }
    
    if let second = str2{
        sum += second
    } else {
        print("2nd is nil")
    }
    
    if let thrid = str3{
        sum += thrid
    } else {
        print("3rd is nil")
    }
    return sum
}

print(getString(str1: "yo", str2: "What", str3: "Sup"))
