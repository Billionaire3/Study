//: Playground - noun: a place where people can play

import Foundation


/***************************************************
 1. width, height 속성을 가진 Quadrangle 클래스 정의
 2. 초기화 메서드에서 width, height 프로퍼티 값을 설정할 수 있도록 구현
 3. 사각형의 가로 세로 길이를 설정할 수 있는 메서드 구현
 4. 사각형의 가로세로 길이  /  사각형의 넓이를 반환하는 메서드를 각각 구현
 5. 다음과 같은 속성을 지닌 인스턴스 생성
 
 - 직사각형 1개 속성: width = 10, height = 5
 - 정사각형 1개 속성: width = 7, height = 7
 ***************************************************/

class Quadrangle {
    var width: Double
    var height: Double
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func setLength(width: Double, height: Double) -> (Double, Double){
        self.width = width
        self.height = height
        print(width, height)
        return(width, height)
    }
    
    func area(width: Double, height: Double) -> Double {
        print(width * height)
        return width * height
    }
    
//    var area: Double {
//        get {
//            return width * height
//        } set {
//            width = newValue
//            height = newValue
//        }
//
//    }
}

let Quadrangle1 = Quadrangle.init(width: 0.0, height: 0.0)
Quadrangle1.setLength(width: 10.0, height: 5.0)
Quadrangle1.area(width: 10.0, height: 5.0)

let Quadrangle2 = Quadrangle.init(width: 0.0, height: 0.0)
Quadrangle2.setLength(width: 7.0, height: 7.0)
Quadrangle2.area(width: 7.0, height: 7.0)

/***************************************************
 1. 채널 정보, Volume 값, 전원 설정여부를 속성으로 가지는 클래스 정의
 2. TV 의 현재 채널 및 볼륨을 확인할 수 있는 메서드 및 변경 가능한 메서드 구현
 3. TV 전원이 꺼져있을 때는 채널과 볼륨 변경을 할 수 없도록 구현
 4. TV 전원이 꺼져있을 때는 채널과 볼륨 정보를 확인했을 때 -1 이 반환되도록 구현
 ***************************************************/

class TV {
    var chanel = 0
//    {
//        willSet {
//            print("now: ", chanel, " -> " , newValue)
//        }
//    }
    var volume = 0
//    {
//        willSet {
//            print("now: ", volume, " -> ", newValue)
//        }
//    }
    var onOff = 0
    
    
    
    
    }
    



/***************************************************
 1. 사각형의 길이를 설정하는 초기화 메서드, 둘레와 넓이값을 구하는 메서드 구현
 2. 원의 반지름을 설정하는 초기화 메서드, 둘레와 넓이값을 구하는 메서드 구현
 ***************************************************/

class Square {
}


class Circle {
}


//: [Next](@next)
