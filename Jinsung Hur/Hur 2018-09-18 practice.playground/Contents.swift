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

//    - 데이터량 (KB to MB   /  MB to GB)  (1024 KB = 1 MB,   1024 MB = 1 GB)

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




