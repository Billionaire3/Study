
//0. 수업 시간에 진행한 Practice 내에 있는 문제들 풀어보기
//0-1.
/***************************************************
 1. width, height 속성을 가진 Quadrangle 클래스 정의
 2. 초기화 메서드에서 width, height 프로퍼티 값을 설정할 수 있도록 구현
 3. 사각형의 가로 세로 길이를 설정할 수 있는 메서드 구현
 4. 사각형의 가로세로 길이  /  사각형의 넓이를 반환하는 메서드를 각각 구현
 5. 다음과 같은 속성을 지닌 인스턴스 생성
 
 - 직사각형 1개 속성: width = 10, height = 5
 - 정사각형 1개 속성: width = 7, height = 7
 ***************************************************/
print("==============================================")
class Quadrangle {
    var width: Int
    var height: Int
    
    //    lazy var area = self.width * self.height
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    func returnLength() {
        return print("사각형의 가로길이 : \(self.width) , 세로길이 : \(self.height)")
    }
    
    func returnArea() {
        let area = self.width * self.height
        return print("사각형의 넓이 : \(area) ")
    }
}

var rectangle = Quadrangle(width: 10, height: 5)
rectangle.width = 10
rectangle.height = 5
rectangle.returnLength()
rectangle.returnArea()
//
var square = Quadrangle(width: 7, height: 7)
square.width = 7
square.height = 7
square.returnLength()
square.returnArea()
//

//0-2.
/***************************************************
 1. 채널 정보, Volume 값, 전원 설정여부를 속성으로 가지는 클래스 정의
 2. TV 의 현재 채널 및 볼륨을 확인할 수 있는 메서드 및 변경 가능한 메서드 구현
 3. TV 전원이 꺼져있을 때는 채널과 볼륨 변경을 할 수 없도록 구현
 4. TV 전원이 꺼져있을 때는 채널과 볼륨 정보를 확인했을 때 -1 이 반환되도록 구현
 ***************************************************/

print("==============================================")

class TV {
    var channelInfo : Int = 1
    var volume : Int = 1
    var powerIsOn : Bool = true
    
    
    //    // channel info`s getter / setter
    //    func setChannelInfo(channelInfo: Int) {
    //        self.channelInfo = channelInfo
    //    }
    //
    //    func getChannelInfo() -> Int {
    //        if self.getPowerInfo() {
    //           return self.channelInfo
    //        }
    //        print("else??")
    //        return -1
    //    }
    //
    //
    //    // volume`s getter / setter
    //    func setVolumeInfo(volume: Int) {
    //        self.volume = volume
    //    }
    //
    //    func getVolumeInfo() -> Int {
    //        return self.volume
    //    }
    //
    //    // powerIsOn`s getter / setter
    //    func setPowerInfo(powerIsOn: Bool) {
    //        self.powerIsOn = powerIsOn
    //    }
    //
    //    func getPowerInfo() -> Bool {
    //        return self.powerIsOn
    //    }
    //
    
    func channelAndVolumeInformation() {
        if (false == powerIsOn) {
            print("-1")
        }
        else {print("현재 채널은 \(channelInfo)이고 볼륨은 \(volume)입니다. ") }
    }
    func turnChannelOrVolume(inputChannel: Int, inputVolume: Int){
        if (false == powerIsOn) {
            print("TV 전원이 꺼져있습니다. ")
        }
        else {channelInfo = inputChannel
            volume = inputVolume}
    }
    func turnPower(){
        if (true == powerIsOn) {
            powerIsOn = false
        } else { powerIsOn = true }
    }
}

var tv = TV()

tv.channelAndVolumeInformation()
tv.turnChannelOrVolume(inputChannel: 7, inputVolume: 3)
tv.channelAndVolumeInformation()
tv.turnPower()
tv.channelAndVolumeInformation()
tv.turnChannelOrVolume(inputChannel: 3, inputVolume: 8)
tv.turnPower()
tv.channelAndVolumeInformation()
tv.turnChannelOrVolume(inputChannel: 3, inputVolume: 8)
tv.channelAndVolumeInformation()


//0-3-a.
/***************************************************
 1. 사각형의 길이를 설정하는 초기화 메서드, 둘레와 넓이값을 구하는 메서드 구현
 ***************************************************/
print("==============================================")
class Square {
    var lengthVertical: Int
    var lengthHorizontal: Int
    
    var RectangleCircumference = 0
    var RectanguleArea = 0
    
    init(lengthVertical: Int, lengthHorizontal: Int) {
        self.lengthVertical = lengthVertical
        self.lengthHorizontal = lengthHorizontal
    }
    func getRectangleCircumference() -> Int {
        RectangleCircumference = (lengthVertical * 2) + (lengthHorizontal * 2)
        return RectangleCircumference
    }
    func getRectanguleArea() -> Int {
        RectanguleArea = lengthVertical * lengthHorizontal
        return RectanguleArea
    }
}

let mySquare = Square(lengthVertical: 3, lengthHorizontal: 5)
print(mySquare.getRectangleCircumference())
print(mySquare.getRectanguleArea())


//0-3-b.
/***************************************************
 //2. 원의 반지름을 설정하는 초기화 메서드, 둘레와 넓이값을 구하는 메서드 구현
 ***************************************************/
print("==============================================")
class Circle {
    var radius : Double
    
    init(radius :Double) {
        self.radius = radius
    }
    
    func getCircleLength() -> Double {
        let circleLength = 2 * radius * 3.14
        return circleLength
    }
    func getCircleSquare() -> Double {
        let circleSquare = radius * radius * 3.14
        return circleSquare
    }
}
let myCircle = Circle(radius: 5.2)
print(myCircle.getCircleLength())
print(myCircle.getCircleSquare())


print("==============================================")

//===============================================================
//1. 다음과 같은 속성(Property)과 행위(Method)를 가지는 클래스 만들어보기.
//===============================================================

//1-1.  ** 강아지 (Dog)
//- 속성: 이름, 나이, 몸무게, 견종
//- 행위: 짖기, 먹기
class Dog {
    let name: String
    var age: Int
    var weight: Double
    let breed: String
    
    init(name: String, age: Int, weight: Double, breed: String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.breed = breed
    }
    
    func barking() -> String {
        return "왈왈! 왈왈왈왈왈!"
    }
    func eatting() -> String {
        weight += 0.1
        return "냠냠냠냠냠냠 촵촵"
    }
}

let myDog = Dog(name: "아지", age: 1, weight: 2, breed: "시츄")
print(myDog.barking())
print(myDog.weight)
print(myDog.eatting())
print(myDog.weight)


print("==============================================")

//1-2. ** 학생 (Student)
//- 속성: 이름, 나이, 학교명, 학년
//- 행위: 공부하기, 먹기, 잠자기
class Student {
    let name: String
    var age: Int
    var schoolName: String
    var grade: Int
    
    init(name: String, age: Int, schoolName: String, grade: Int) {
        self.name = name
        self.age = age
        self.schoolName = schoolName
        self.grade = grade
    }
    
    func study() -> String {
        return "타잣타잣.. 코딩능력 +1"
    }
    
    func eat() -> String {
        return "냠냠냠냠냠"
    }
    func sleeping() -> String {
        return "zzzz.. 커어어...zzz.."
    }
}
let jinju = Student(name: "진주", age: 25, schoolName: "FastCampusIOS", grade: 1)
print(jinju.study())
print(jinju.study())
print(jinju.eat())
print(jinju.study())
print(jinju.study())
print(jinju.sleeping())

print("==============================================")

//1-3. ** 아이폰(IPhone)
//- 속성: 기기명, 가격, faceID 기능 여부(Bool)
//- 행위: 전화 걸기, 문자 전송
class IPhone {
    let name: String
    let price: Int
    let faceID: Bool
    
    init(name: String, price: Int, faceID: Bool) {
        self.name = name
        self.price = price
        self.faceID = faceID
    }
    func makeACall(receiver: String) -> String {
        return "Siri야, \(receiver)에게 전화를 걸어. "
    }
    func sendAMessage(receiver: String, message: String) -> String {
        return "\(receiver)에게 \"\(message)\"라고 문자를 보냈습니다."
    }
}

let iphone = IPhone(name: "아이폰6+", price: 1000000, faceID: false)
print(iphone.makeACall(receiver: jinju.name))
print(iphone.sendAMessage(receiver: jinju.name, message: "공부해라"))

print("==============================================")

//1-4. ** 커피(Coffee)
//- 속성: 이름, 가격, 원두 원산지
class Coffee {
    var name: String = ""
    var price: Int = 0
    var originOfBeans: String = ""
    
    func info() {
        print("커피명 : \(self.name)")
        print("가격 : \(self.price)원")
        print("원두 원산지 : \(self.originOfBeans)")
    }
}

let iceAmericano = Coffee()
iceAmericano.name = "아이스 아메리카노"
iceAmericano.price = 3900
iceAmericano.originOfBeans = "예멘"
iceAmericano.info()
print("==============================================")

let latte = Coffee()
latte.name = "라떼"
latte.price = 4200
latte.originOfBeans = "에티오피아"
latte.info()

print("==============================================")




//2. 계산기 클래스를 만들고 다음과 같은 기능을 가진 Property 와 Method 정의해보기
//
//    ** 계산기 (Calculator)
//    - 속성: 현재 값
//- 행위: 더하기, 빼기, 나누기, 곱하기, 값 초기화

class Calculator {
    var currentValue: Double = 0.0
    
    func add(value: Int) -> Double {
        self.currentValue += Double(value)
        return self.currentValue
    }
    func subtract(value: Int) -> Double {
        self.currentValue -= Double(value)
        return self.currentValue
    }
    func multiply(value: Int) -> Double {
        self.currentValue *= Double(value)
        return self.currentValue
    }
    func divide(value: Int) -> Double {
        self.currentValue /= Double(value)
        return self.currentValue
    }
    func reset() {
        self.currentValue = 0.0
    }
}
let calculator = Calculator()


print(calculator.add(value: 10))   // 10
print(calculator.add(value: 5))     // 15

print(calculator.subtract(value: 9))  // 6
print(calculator.subtract(value: 10)) // -4

print(calculator.multiply(value: 4))  // -16
print(calculator.multiply(value: -10)) // 160

print(calculator.divide(value: 10))   // 16
print(calculator.reset())      // 0

