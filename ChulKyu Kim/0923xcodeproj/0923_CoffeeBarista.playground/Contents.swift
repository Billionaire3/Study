//: Playground - noun: a place where people can play

import UIKit

// 0921_practice3 Coffee barista

enum CoffeeMenu {
    case americano, latte, cappuccino
}

class Customer {
    var name = ""
    
    func order(menu: CoffeeMenu, to: Barista) {
        print("\(name) 손님이 \(to) 바리스타에게 \(menu)를 받았습니다")
    }
}

class Barista: Customer {
    
    func makeCoffee(menu: CoffeeMenu) {
        
    }
}

class Coffee: Customer {
    let price = 0.0
}

let customer = Customer()
customer.name = "Maru"
let barista = Barista()
barista.name = "Chulkyu"


customer.order(menu: .americano, to: barista)

