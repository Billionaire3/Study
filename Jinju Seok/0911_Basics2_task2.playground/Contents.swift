/*:
 ---
 ### Question
 for , while , repeat - while 등을 골고루 활용하여 아래 문제들을 구현해보세요.
 1. 1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수
 2. 정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수
 3. 정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수
 4. 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수
 5. 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
 ---
 */
//========================================================


//1. 1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수
func printGuGu(i : Int) {
    print("\(i)단=============")
    for num in 1...9{
        print("\(i) * \(num) = \(i * num) ")
    }
}
printGuGu(i: 3)



//2. 정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수
func factorial(inputNumb : Int) -> Int{
    var totalNum = 1
    for inputNumb in (1...inputNumb).reversed() {
        totalNum *= inputNumb
    }
    return totalNum
}

factorial(inputNumb: 5)



//3. 정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수
func pow(num1 : Int, num2 : Int) -> Int {
    var returnValue = 1
    for _ in (1...num2) {
        returnValue *= num1
    }
    return returnValue
}
pow(num1: 2, num2: 3)


//4. 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수
//func sumEveryNum (inputnum : Int) -> Int {
//    var temp = 0
//    let intToString = String(inputnum)
//
//    for char in intToString {
//        temp += Int(String(char))!    // 이렇게 표현할수도 있기는 하지만..
//    }                                //강제성을 띄는 !는 최대한 사용하지 않는 편이 좋다
//    return temp                      // -> guard 구문을 통해서 무조건 값이 있도록 표현하는걸로 수정해볼것
//}

func sumEveryNum(inputnum: Int) -> Int? {               // 애초에 함수 선언시 reurn값을 Int?로 설정하기
    let sInt: String = String(inputnum)                 // nil 값을 담을수도 있도록
//    guard let intToString = sInt else {return 404}        // <이거아님ㅎ> return what the ... 404 not found....ㅎㅎ...

    var temp = 0
    for get in sInt {
        let value = Int(String(get))
        if let result = value {                         // 옵셔널 바인딩 개념 복습하기 ( if let ~ )
            temp += result
        } else {
            return nil          // String으로 변환할 수 없는 경우 값이 없다는 의미로 nil 사용
        }
    }
    return temp
}

sumEveryNum(inputnum: 32)       // nil 값을 담는 것이 아니어도 반환 타입은 당연히 Int? 형


//5. 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
func commonMultiple(first: Int, second: Int) {
    for temp2 in 1...100 {
        if (0 == (temp2 % first)), (0 == (temp2 % second)) == true {
            print(temp2)
        }
    }
}
commonMultiple(first: 3, second: 5)


