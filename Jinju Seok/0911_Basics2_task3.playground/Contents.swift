/*
 1. 정수 하나를 입력받아 그 정수의 약수를 모두 출력하는 함수
 2. 2 이상의 정수를 입력받아, 소수인지 아닌지를 판별하는 함수
 3. 정수를 입력받아 입력받은 수에 해당하는 자리의 피보나치 숫자를 반환하는 함수
 */

//1. 정수 하나를 입력받아 그 정수의 약수를 모두 출력하는 함수
func PrintDivisor(myInt: Int) {
    var arr1 : [Int] = []
    for temp in 1...myInt {
        if (0 == myInt % temp) {
            arr1.append(temp)
        }
    }
    print(arr1)
}
PrintDivisor(myInt: 18)



//2. 2 이상의 정수를 입력받아, 소수인지 아닌지를 판별하는 함수
func isThisPrimeNumber(inputValue: Int) {
    guard (inputValue > 1) else { return print("2 이상의 정수를 입력하세요. ") }
    var arr2 : [Int] = []
    for temp in 1...inputValue {
        if (0 == inputValue % temp) {
            arr2.append(temp)
        }
    }
    if 2 == arr2.count {
        print("입력한 정수는 소수입니다. ")
    }
    else {
        print("입력한 정수는 소수가 아닙니다. ")
    }
}
isThisPrimeNumber(inputValue: 20)


//3. 정수를 입력받아 입력받은 수에 해당하는 자리의 피보나치 숫자를 반환하는 함수
//func getFibonacciNum(label inputNum: Int) -> Int {
//
//    // 0보다 작을 때 케이스를 생각해봐야함..nil
//
//    if inputNum <= 1 {
//        return inputNum
//    }
//    return getFibonacciNum(label: inputNum - 1) + getFibonacciNum(label: inputNum - 2)
//}

func getFibonacciNum(label inputNum: Int) -> Int? {
    //   만약 잘못된 코드로 인해 콜스택이 쌓이는 경우 중지시키고 종료하면 됨..
    //   따라서 재귀함수 사용시 주의할 것
    guard inputNum >= 0 else { return nil }
    
    if inputNum <= 1 {
        return inputNum
    }
    
    if let result1 = getFibonacciNum(label: inputNum - 1),
        let result2 = getFibonacciNum(label: inputNum - 2) {
        return result1 + result2
    } else {
        return nil
    }
    //    Int?를 반환해야하는데 Int? + Int?의 연산은 불가능하다!
    //    따라서 따로 if let으로 빼서 (, -> And) 연산을 통해 nil 값이 없도록 한 다음 더하고,
    //    else는 (둘중 하나가 nil이거나 둘다 nil인 경우) nil로 빼기
    
    //    아래 코드는 잘못된 코드 -> (Int? + Int?) 연산이 불가능하므로
    //    return getFibonacciNum(label: inputNum - 1) + getFibonacciNum(label: inputNum - 2)
}

getFibonacciNum(label: 3)
