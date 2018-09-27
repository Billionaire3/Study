
// 손님, 바리스타, 커피 클래스를 정의하고 손님이 바리스타에게 커피를 주문하는 기능을 구현하기

enum CoffeeMenu {
    case americano
    case latte
    case cappuccino
}

class Coffee {
    var name: String
    var price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

class Customer {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func order(menu: CoffeeMenu, to: Barista) {
        let coffee = to.makeCoffee(menu: menu)
        print("\(name) 손님이 \(to.name) 바리스타에게 \(coffee.name)를 받았습니다.")
    }
}

class Barista {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeCoffee(menu: CoffeeMenu) -> Coffee {
        switch menu {
        case .americano:
            return Coffee(name: "아메리카노", price: 4000)
        case .latte:
            return Coffee(name: "카페라떼", price: 4500)
        case .cappuccino:
            return Coffee(name: "카푸치노", price: 5000)
        }
    }
}

let customer = Customer(name: "석진주")
let barista = Barista(name: "바빈스키")
customer.order(menu: .americano, to: barista)

