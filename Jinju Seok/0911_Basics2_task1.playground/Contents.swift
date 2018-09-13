/*
 ## Question  (switch 를 이용해서 구현)
 1. 두 개의 정수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)
 2. 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
 3. 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)
 4. 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것)
 5. 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")
 6. 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
 */

//1. 두 개의 정수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)
func connectInt (integer1 : Int, integer2 : Int) {
    let convertIntToString1 : String = String(integer1)
    let convertIntToString2 : String = String(integer2)
    
    let returnString : String = String(convertIntToString1) + String(convertIntToString2)
    print(returnString)
}

connectInt(integer1: 15, integer2: 2)




//2. 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
func isEqual (string1 : String, string2 : String) -> Bool {
    return (string1 == string2)
}

isEqual(string1: "abc", string2: "def")




//3. 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)
func getGrade (score : Double) -> String {
    switch score {
    case 4.5 :
        return "A+"
    case 4.0..<4.5 :
        return "A"
    case 3.5..<4.0 :
        return "B+"
    case 3.0..<3.5 :
        return "B"
    case 2.5..<3.0 :
        return "C+"
    case 2.0..<2.5 :
        return "C"
    case 1.5..<2.0 :
        return "D+"
    default:
        return "F"
    }
}
getGrade(score: 3.8)


//4. 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것)
func isMultiplication (num1 : Double, num2 : Double, num3 : Double) -> Bool {
    let multiplication : Double = Double(num1) * Double(num2) * Double(num3)
    switch multiplication {
    case multiplication where multiplication > 0 :
        return true
    default:
        return false
    }
}
isMultiplication(num1: -11, num2: 7, num3: 1)





//5. 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")

func connectString (intMonth : Int) -> String {
    
    let monthString = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    
    switch intMonth {
    case intMonth where 0 < intMonth && intMonth <= monthString.count :
        return monthString[intMonth - 1]
    default:
        return "1 ~ 12 사이의 수를 입력하세요."
    }
    
    //    switch intMonth {
    //    case 1:
    //        return "Jan"
    //    case 2:
    //        return "Feb"
    //    case 3:
    //        return "Mar"
    //    case 4:
    //        return "Apr"
    //    case 5:
    //        return "May"
    //    case 6:
    //        return "Jun"
    //    case 7:
    //        return "Jul"
    //    case 8:
    //        return "Aug"
    //    case 9:
    //        return "Sep"
    //    case 10:
    //        return "Oct"
    //    case 11:
    //        return "Nov"
    //    case 12:
    //        return "Dec"
    //    default:
    //        return "1~12사이의 숫자를 입력하세요."
    //    }
}
connectString(intMonth: 17)



//6. 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)

func leapYear (year : Int) -> String {
    //    if 0 == (year % 4) {
    //        return "윤년"
    //    }
    //    else if 0 == (year % 100) {
    //        return "윤년"
    //    }
    //    else if 0 == (year % 400) {
    //        return "윤년"
    //    }
    //    else {
    //        return "평년"
    //    }
    
    switch year {
    case year where 0 == (year % 4) || 0 == (year % 100) || 0 == (year % 400) :
        return "윤년"
    default:
        return "평년"
    }
}

leapYear(year: 100)

