//: Playground - noun: a place where people can play

import UIKit

// 아래와 같은 상속구조를 갖는 클래스들이 있다.


/*
 1. Vehicle 클래스에 지정 이니셜라이져(Designated Initializer)를 추가
 2. Car 클래스에 numberOfSeat가 0 이하일 때 nil을 반환하는 Failable Initializer를 추가
 3. Bus 클래스에 지정 이니셜라이져를 추가하고, 편리하게 speed를 입력받지 않아도 100으로 할당해주는 편의 이니셜라이져를 추가
 */



class Vehicle {
    let name: String
    let speed: Int
    
    init(name: String, speed: Int) {
        self.name = name
        self.speed  = speed
    }
}

let a = Vehicle.init(name: "Monster_verI", speed: 444)
a.name
a.speed



class Car: Vehicle {
    var gear: Int
    var numberOfSeats: Int
    
    init?(name: String, speed: Int, gear: Int, seats: Int) {
        self.gear = gear
        self.numberOfSeats = seats
        guard numberOfSeats > 0 else { return nil }
        super.init(name: name, speed: speed)
        }
}

let b = Car.init(name: "Monster_verII", speed: 999, gear: 12, seats: 2)
b?.name
b?.speed
b?.gear
b?.numberOfSeats

let c = Car.init(name: "Monter_verII", speed: 999, gear: 12, seats: 0)
c?.numberOfSeats



class Bus: Vehicle {
    let isDoubleDecker: Bool
    
    init(name: String, speed: Int, isDoubleDecker: Bool) {
        self.isDoubleDecker = isDoubleDecker
        super.init(name: name, speed: speed)
    }
    
    convenience init(name: String, isDoubleDecker: Bool) {
        self.init(name: name, speed: 100, isDoubleDecker: isDoubleDecker)
    }
}

let d = Bus.init(name: "Monster_verIII", isDoubleDecker: true)
d.name
d.speed
d.isDoubleDecker

let e = Bus.init(name: "Monster_verIV", speed: 65564, isDoubleDecker: true)
e.name
e.speed
e.isDoubleDecker


