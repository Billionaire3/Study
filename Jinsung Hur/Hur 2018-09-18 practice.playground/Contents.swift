//: Playground - noun: a place where people can play

import UIKit

print(" *** 상속, 다형성 과제 *** ")
print(" *** 상속 적용해보기 *** ")
class Animal {
    var brain : Bool = true
    var legs : Int = 0
    }
var expressionAnimal = Animal()
expressionAnimal.brain
expressionAnimal.legs

class Human : Animal {
    override init() {
        super.init()
        legs = 2
    }
}
var expressionHuman = Human()
expressionHuman.brain
expressionHuman.legs
expressionAnimal.legs


class Human2 : Animal {
    override var legs : Int {
        get { return super.legs }
        set { super.legs = 2 }
    }
}
var expressionHuman2 = Human2()
expressionHuman2.legs  // 겟 셋을 사용하여 변경 된줄 알았으나 다리2개로 변경되지 않음
expressionAnimal.legs  // 그렇다고 상위 클래스 프로퍼티가 변경되지도 않음. 겟셋 혼돈.


class Pet : Animal {
    override init() {
        super.init()
        legs = 4
    }
    var fleas : Int = 0
}
var expressionPet = Pet()
expressionPet.legs
expressionPet.fleas

class Dog : Pet {
    override init() {
        super.init()
        fleas = 8
    }
}

class Cat : Pet {
    override init() {
        super.init()
        fleas = 4
    }
}

var expressionCat = Cat()
expressionCat.fleas
expressionCat.legs
expressionCat.brain

print("\n *** Q. Overriding 적용해보기 \n func bark() 라는 메서드를 가진 Dog 클래스를 상속받은 Poodle, Husky, Bulldog \n 클래스를 각각 구현하고 bark() 호출 시 각 객체가 서로 다르게 짖도록 Overriding 적용 ***")
class Dog2 {
    var barkSound : String = "Barking dogs seldom bite."
    func bark() {
        print(barkSound)
    }
}
var action = Dog2()
action.bark()

class Poodle : Dog2 {
    override init() {
        super.init()
        barkSound = "Poo Poo"
    }
}
var actionPoo = Poodle()
actionPoo.bark()


class Husky : Dog2 {
    override init() {
        super.init()
        barkSound = "Husk Husk"
    }
}
var actionHusky = Husky()
actionHusky.bark()


class Bulldog : Dog2 {
    override init() {
        super.init()
        barkSound = "Bull Bull"
    }
}
var actionBull = Bulldog()
actionBull.bark()


print(" \n *** 1. ToolBox 라는 클래스를 만들어서 다음과 같이 수치를 변환해주는 기능 구현. \n 다음 4가지 방법 중 (Method, Stored Property, Computed Property, Property Observer) \n 한 문제당 하나씩 서로 다른 방법을 골라 적용해 볼 것 ***")
class ToolBox {
    var value : Double
    var result : Double = 0.0
    
    init(value : Double) {
        self.value = value
    }
    
    func inchToCm(value:Double) -> String{
        result = value * 2.54
        return "\(value) inch is \(result)cm "
    }
}
var calInchToCm : ToolBox = ToolBox(value: 5.4)
print(calInchToCm.inchToCm(value: 5.4))


class ToolBox2 {
    var value : Double = 0.0
    lazy var result = self.value / 3.3
}
var squareMeterToPyeong = ToolBox2()
squareMeterToPyeong.value = 9.9
print("\(squareMeterToPyeong.value) square meter is \(squareMeterToPyeong.result) pyeong")


class ToolBox3 {
    var value : Double = 0.0
    
    var result : Double {
        return (value - 32) / 1.8
    }
}
var fahrenheitToCelsius = ToolBox3()
fahrenheitToCelsius.value = 212
print("\(fahrenheitToCelsius.value) Fahrenheit is \(fahrenheitToCelsius.result) Celsius")

class ToolBox4 {
    var value = 0.0 {
        willSet {
            print(newValue, "KB ->", newValue / 1024, "MB" )
        }
        didSet {
            print()
        }
    }
}
var kbToMb = ToolBox4()
kbToMb.value = 1024


print("이미지(첨부파일 참조)에 보이는 것처럼 각 도형의 넓이, 둘레, 부피를 구하기 위한 클래스를 구현")
var π = Double.pi

class SquareQ {
    var s: Double?

    func question(s: Double) -> String {
        let a = s * s
        let p = 4 * s
        return "한변의 길이가 \(s)일 때, 정사각형 넓이는 \(a), 둘레는 \(p)"
    }
}
var result1 = SquareQ()
print(result1.question(s: 3.5))


class RectangleQ {
    var w: Double?
    var l: Double?
    
    func question(w: Double, l: Double) -> String {
        let a = l * w
        let p = (2 * l) + (2 * w)
        return "변의 길이가 \(l)과 \(w)일 때, 사각형 넓이는 \(a), 둘레는 \(p)"
    }
}
var result2 = RectangleQ()
print(result2.question(w: 3.5, l: 5.2))


class CircleQ {
    var r: Double?
    
    func question(r: Double) -> String {
        let a = π * r * r
        let c = 2 * π * r
        return "반지름의 길이가 \(r)일 때, 원 넓이는 \(a), 둘레는 \(c)"
    }
}
var result3 = CircleQ()
print(result3.question(r: 3.5))

class TriangleQ {
    var b: Double?
    var h: Double?

    func question(b: Double, h: Double) -> String{
        let a = 1 / 2 * b * h
        return "밑변이 \(b), 높이가 \(h) 일 때, 삼각형의 넓이는 \(a)"
    }
}
var resert4 = TriangleQ()
print(resert4.question(b: 3.4, h: 7))


class TrapezoidQ {
    var a : Double?
    var b : Double?
    var h : Double?
    
    func question(a: Double, b: Double, h: Double) -> String{
        let area = 1 / 2 * h * (a + b)
        return "사다리꼴의 밑변이 \(a), 윗변이 \(b), 높이가 \(h), 일 때, 넓이는 \(area)"
    }
}
var result5 = TrapezoidQ()
print(result5.question(a: 4, b: 2, h: 5))


class CubeQ {
    var s: Double?
    
    func question(s: Double) -> String {
        let v = s * s * s
        return "한변이 \(s)인 정육면체의 부피는 \(v)"
    }
}
var result6 = CubeQ()
print(result6.question(s: 3.5))


class RectangularSolidQ {
    var w: Double?
    var l: Double?
    var h: Double?
    
    func question(w: Double, l: Double, h: Double) -> String{
        let v = w * l * h
        return "육면체의 각변의 길이가 \(w), \(l), \(h) 일 때, 부피는 \(v)"
    }
}
var result7 = RectangularSolidQ()
print(result7.question(w: 2.5, l: 4.2, h: 9.7))


class CircularCylinderQ {
    var r: Double?
    var h: Double?
    
    func question(r: Double, h: Double) -> String {
        let v = π * r * r * h
        return "원통의 반지름이 \(r) 이고 높이가 \(h) 일 때, 부피는 \(v)"
    }
}
var result8 = CircularCylinderQ()
print(result8.question(r: 3.2, h: 8))


class SphereQ {
    var r: Double?
    
    func question(r: Double) -> String {
        let v = 4 / 3 * π * r * r * r
        return "구의 반지름이 \(r) 일 때, 부피는 \(v)"
    }
}
var result9 = SphereQ()
print(result9.question(r: 3.4))


class ConeQ {
    var r: Double?
    var h: Double?
    
    func question(r: Double, h: Double) -> String {
        let v = 1 / 3 * π * r * r * h
        return "원뿔의 반지름이 \(r) 이고, 높이가 \(h) 일때, 부피는 \(v)"
    }
}
var result10 = ConeQ()
print(result10.question(r: 2.2, h: 7.9))
