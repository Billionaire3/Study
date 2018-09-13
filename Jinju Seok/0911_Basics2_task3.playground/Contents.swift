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
func getFibonacciNum (label inputNum : Int) -> Int {
    
    // 0보다 작을 때 케이스를 생각해봐야함..nil
    
    if inputNum <= 1 {
        return inputNum
    }
    
    return getFibonacciNum(label: inputNum - 1) + getFibonacciNum(label: inputNum - 2)
}

print(getFibonacciNum(label: 3))


