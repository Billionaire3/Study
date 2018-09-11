/*
 1. 이름을 입력 값으로 받아서 출력하는 함수
 2. 나이를 입력 값으로 받아서 출력하는 함수
 3. 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
 4. 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
 5. 정수를 두 개 입력받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
 6. 4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수
 7. 점수(문자 또는 숫자)를 입력받아 학점(A. B. C...)를 반환하는 함수 만들기(90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F)
 8. 점수(문자 또는 숫자)를 여러개 입력받아 평균에 대한 학점을 반환하는 함수 만들기(90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F)
 */


//1. 이름을 입력 값으로 받아서 출력하는 함수
func printName (name : String) {
    print(name)
}
printName (name: "석진주")


//2. 나이를 입력 값으로 받아서 출력하는 함수
func printAge (age : Int) {
    print(age)
}
printAge (age: 25)


//3. 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
func printIntroduce (name : String, age : Int) {
    print("안녕하세요. 제 이름은 \(name)입니다. 제 나이는 \(age)살 입니다. ")
}
printIntroduce (name: "석진주", age: 25)


//4. 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
func multiplesOfTwo (integer : Int) -> Bool {
    return 0 == ( integer % 2 )
}
multiplesOfTwo (integer: 10)
multiplesOfTwo (integer: 7)


//5. 정수를 두 개 입력받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
func isMultiplication (integer1 : Int, integer2 : Int = 10 ) -> Int {
    return integer1 * integer2
}
isMultiplication(integer1: 2)
isMultiplication(integer1: 3, integer2: 8)


//6. 4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수
func averageScore (subject1 : Int, subject2 : Int, subject3 : Int, subject4 : Int) -> Float {
    return (Float)(subject1 + subject2 + subject3 + subject4) / 4.0
}
averageScore(subject1: 100, subject2: 100, subject3: 100, subject4: 100)
averageScore(subject1: 50, subject2: 73, subject3: 96, subject4: 86)


//7. 점수(문자 또는 숫자)를 입력받아 학점(A. B. C...)를 반환하는 함수 만들기(90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F)
func getGrades (score : String) -> String {
    let iScore : Int? = Int(score)
    
    guard let realScore = iScore else { return "숫자로 변환 가능한 문자열 대입이 필요합니다. e.g. \"70\" "}
    // guard var로 할 시 권고사항이 알람이 뜬다.
    // 우선적으로 let을 사용한 다음, 코드의 구현부분에서 나중에 수정할 일(ex. 학생 점수의 변경)이 생기면 그때 var로 고쳐주는 것이 더 권고됨
    
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

getGrades(score: "90")
getGrades(score: "구십")     //-> guard 문법 미사용시 error



//8. 점수(문자 또는 숫자)를 여러개 입력받아 평균에 대한 학점을 반환하는 함수 만들기(90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F)
func totalGrades (subScore : Int...) -> String {
    var totalCount : Int = 0
    var totalScore : Int = 0
    for score in subScore {
        totalCount += 1
        totalScore += score
    }
    //    let averageScore : Float = (Float)(totalScore) / (Float)(totalCount)      // 기존 코드 (사용은 가능)
    let averageScore : Float = Float(totalScore) / Float(totalCount)
    //    type을 as를 사용해서 사용할수도 강제캐스팅 가능.. 사용하는 문법 찾아보기
    //    double형을 float형보다는 권고한다. 최신 OS들이 그렇게 큰 차이를 야기하지 않기 때문
    
    
    //    print(averageScore)
    
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

totalGrades(subScore: 73, 91, 83)
