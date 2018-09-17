//: Playground - noun: a place where people can play

import UIKit

class Avengers {
    var name : String!
    var weapon : String!
    var height : Int!
    var comment : String!
    
    func hit() {
        print("Hit!!")
    }
    func hiFive() {
        print("Hi-Five")
    }
}

let ironman: Avengers = Avengers()
ironman.name = "Tony Stark"
ironman.comment = "I'm Ironman"
ironman.hit()
ironman.hiFive()

/***************************************************
 1. width, height 속성을 가진 Quadrangle 클래스 정의
 2. 초기화 메서드에서 width, height 프로퍼티 값을 설정할 수 있도록 구현
 3. 사각형의 가로 세로 길이를 설정할 수 있는 메서드 구현
 4. 사각형의 가로세로 길이  /  사각형의 넓이를 반환하는 메서드를 각각 구현
 5. 다음과 같은 속성을 지닌 인스턴스 생성
 
 - 직사각형 1개 속성: width = 10, height = 5
 - 정사각형 1개 속성: width = 7, height = 7
 ***************************************************/

class Quadragle {
    var width : Int
    var height : Int

    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    func inputLength(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    func yokoTate() -> Array<Int> {
        return [self.width, self.height]
    }
    func quadragleArea() -> Int{
        return self.width * self.height
    }
}
var firstTry = Quadragle(width: 0, height: 0)
firstTry.width
firstTry.height

firstTry.inputLength(width: 1, height: 2)
firstTry.width
firstTry.height

print(firstTry.yokoTate())

firstTry.width = 10
firstTry.height = 5
firstTry.quadragleArea()

firstTry.width = 7
firstTry.height = 7
firstTry.quadragleArea()

/***************************************************
 1. 채널 정보, Volume 값, 전원 설정여부를 속성으로 가지는 TV 클래스 정의
 2. TV 의 현재 채널 및 볼륨을 확인할 수 있는 메서드 및 변경 가능한 메서드 구현
 3. TV 전원이 꺼져있을 때는 채널과 볼륨 변경을 할 수 없도록 구현
 4. TV 전원이 꺼져있을 때는 채널과 볼륨 정보를 확인했을 때 -1 이 반환되도록 구현
 ***************************************************/

class TV {
    var channel : String
    var volume : Int
    var powerSupply : Bool
    
    init(channel: String, volume: Int, powerSupply: Bool) {
        self.channel = channel
        self.volume = volume
        self.powerSupply = powerSupply
    }
    func channelAndVolume() {
        print("Your watching \(channel)")
        print("The curent volume is", "\(volume)")
    }
    func channelAndVolume(channel: String, volume: Int) {
        print("Your watching \(channel)")
        print("The curent volume is", "\(volume)")
    }
    func powerSupplyCheck(powerSupply : Bool) {
        if powerSupply == true {
            print("You can control channel & volume")
        } else {
            print("You cannot control channel & volume")
        }
    }
    func powerSupplyCheck2(powerSupply : Bool, channel: String, volume: Int) -> Array<Any>{
        if powerSupply == true {
            return [channel, volume]
        } else {
            return [-1, -1]
        }
    }
}

var controlTV = TV(channel: "SBS", volume: 10, powerSupply: true)
controlTV.channelAndVolume()
controlTV.channelAndVolume(channel: "MBC", volume: 15)
controlTV.powerSupplyCheck(powerSupply: false)
controlTV.powerSupplyCheck2(powerSupply: false, channel: "KBS", volume: 11)

/***************************************************
 1. 사각형의 길이를 설정하는 초기화 메서드, 둘레와 넓이값을 구하는 메서드 구현
 2. 원의 반지름을 설정하는 초기화 메서드, 둘레와 넓이값을 구하는 메서드 구현
 ***************************************************/

class QuadrangleQ {
    var width : Double
    var height : Double
    
    init(width : Double, height: Double) {
        self.width = width
        self.height = height
    }
    func perimeterAndArea() -> Array<Double>{
        print("Perimeter is \(width * 2 + height * 2) and Area is \(width * height)")
        return [(width * 2 + height * 2), (width * height)]
    }
}
var inputLength = QuadrangleQ(width: 3, height: 4)
inputLength.perimeterAndArea()


class circleQ {
    var radius : Double
    var π = Double.pi
    init (radius : Double) {
        self.radius = radius
    }
    func circumferenceAndArea() -> Array<Double>{
        print("Circumference is \(radius * 2 * π) And Area is \(radius * radius * π) ")
        return [(radius * 2 * π), (radius * radius * π)]
    }
}
var inputRadius = circleQ(radius: 8)
inputRadius.circumferenceAndArea()


//    다음과 같은 속성(Property)과 행위(Method)를 가지는 클래스 만들어보기.
//    ** 강아지 (Dog)
//      - 속성: 이름, 나이, 몸무게, 견종
//      - 행위: 짖기, 먹기

class Dog {
    var name : String
    var age : Int
    var weight : Int
    var species : String
    
    init (name : String, age :Int, weight : Int, species:String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.species = species
    }
    func bark() {
        print("Mung! Mung!")
    }
    func feed() {
        print("chop chop chop")
    }
}
var pet = Dog(name: "Snoopy", age: 5, weight: 10, species: "beagle")
print(pet.name)
pet.bark()
pet.feed()


//    ** 학생 (Student)
//      - 속성: 이름, 나이, 학교명, 학년
//      - 행위: 공부하기, 먹기, 잠자기
class Student {
    var name = "Bernard"
    var age = 36
    var schoolName = "APU"
    var grade = 4
    
    func study() {
        print ("\(name) is studying.")
    }
}
let tony : Student = Student()
tony.name = "Tony Stark"
print(tony.name)
tony.age = 50
tony.study()


//    ** 아이폰(IPhone)
//      - 속성: 기기명, 가격, faceID 기능 여부(Bool)
//      - 행위: 전화 걸기, 문자 전송
//
//    ** 커피(Coffee)
//      - 속성: 이름, 가격, 원두 원산지

// 계산기 클래스를 만들고 다음과 같은 기능을 가진 Property 와 Method 정의해보기
//    ** 계산기 (Calculator)
//      - 속성: 현재 값
//      - 행위: 더하기, 빼기, 나누기, 곱하기, 값 초기화

class Calculator {
    var currentNum = 0.0
    var newNum : Double
    
    init (newNum: Double) {
    self.newNum = newNum
    }
    func addition(newNum:Double) -> Double {
            self.newNum = newNum
            self.currentNum += self.newNum
        return self.currentNum
    }
    func substraction(newNum:Double) -> Double {
            self.newNum = newNum
            self.currentNum -= self.newNum
        return self.currentNum
    }
    func multiplication(newNum:Double) -> Double {
        if self.currentNum == 0.0 {
            self.currentNum += newNum
        }   else {
            self.currentNum *= newNum
        }
            return self.currentNum
    }
    func division(newNum:Double) -> Double {
        if self.currentNum == 0.0 {
            self.currentNum += newNum
        }   else {
            self.currentNum /= newNum
        }
        return self.currentNum
    }
    func reset() -> Double{
        self.currentNum = 0.0
        self.newNum = 0.0
        return self.currentNum
    }
}

var calculator = Calculator(newNum: 0.0)
calculator.addition(newNum : 5.0)
calculator.reset()
calculator.multiplication(newNum: 4.0)
calculator.multiplication(newNum: 12.2)
calculator.division(newNum: 33.9)
