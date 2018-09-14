
//enum Month { case jan, feb } 를 정의하되 2월이 윤년인지 아닌지 정보를 전달할 수 있도록 구현
enum Month {
    case jan
    case feb ( Bool )
}

func leapYear (year : Int) -> Bool {
    switch year {
    case year where 0 == (year % 400) || ( 0 == (year % 400) && 0 != (year % 100) ) :
        return true
    default:
        return false
    }
}

//leapYear(year: 100)

func qEnum (year : Int) -> Month {
    
    let returnValue: Month = .feb(leapYear(year: year) )
    
    return returnValue
}

print(qEnum(year: 300))





//===========================================
//on 과 off 값을 가진 enum 타입 RemoteControl 에 호출 시마다 on, off 값을 바꿔줄 수 있는 함수 구현
enum RemoteControl {
    case on, off
    
    mutating func turnSwitch()
    {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var remoteControl = RemoteControl.on

remoteControl.turnSwitch()
remoteControl.turnSwitch()

/////////////////////////////////////


indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}


///각 케이스별로 연산을 수행하고 그 값을 반환하는 evalue 함수 구현
func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case .number(let value) :
        return value
        
    case .addition(let firstElem, let secondElem) :
        return evaluate(firstElem) + evaluate(secondElem)
        
    case .multiplication(let firstElem, let secondElem) :
        return evaluate(firstElem) * evaluate(secondElem)
        
    }
}
let numberValue1 = ArithmeticExpression.number(5)
let numberValue2 = ArithmeticExpression.number(4)
let additionValue = ArithmeticExpression.addition(ArithmeticExpression.number(100), ArithmeticExpression.number(10))
let multiplicationValkue = ArithmeticExpression.multiplication(additionValue, ArithmeticExpression.number(2))

evaluate(numberValue1)
evaluate(numberValue2)
evaluate(additionValue)

// evaluate(sum)




/***************************************************
 celcius, fahrenheit, kelvin 온도 3가지 케이스를 가진 Temperature enum 타입을 정의
 각 케이스에는 Double 타입의 Associated Value 를 받도록 함
 각 온도를 섭씨 온도로 변환해주는 toCelcius() 함수를 구현
 섭씨 = (화씨 - 32) * 5 / 9
 섭씨 = 켈빈 + 273
 ***************************************************/
enum Temperature {
    case celcius (Double)       //섭씨
    case fahreheit (Double)     //화씨
    case kelvin (Double)        //켈빈
}

var f = Temperature.fahreheit(57)

func toCelcius(temperature: Temperature) -> Double{
    switch temperature {
    case .celcius(let cel):
        return cel
    case .fahreheit(let fa) :
        return (fa - 32) * 5 / 9
    case .kelvin(let kel) :
        return kel + 273
    }
}

toCelcius(temperature: f)

