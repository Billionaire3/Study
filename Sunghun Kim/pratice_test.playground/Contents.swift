//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func connectInt (integer1 : Int, integer2 : Int) {
    let convertIntToString1 : String = String(integer1)
    let convertIntToString2 : String = String(integer2)
    
    let returnString : String = convertIntToString1 + convertIntToString2
    print(returnString)
}

connectInt(integer1: 15, integer2: 2)


func checkPN(a: Int, b: Int, c:Int){
    let checking = (a, b, c)
    switch checking {
    case (a, b, c) where a*b*c > 0:
        print("its positive")
    case (a, b, c) where a*b*c < 0:
        print("its negative")
    default:
        print("0")
    }
}
checkPN(a:1, b:2, c:3)
checkPN(a:100, b:1, c:0)
checkPN(a:-1, b:-1, c:-1)


func specialMonth(a: Int){
    
    switch a {
    case 1:
        print("JAN")
    case 2:
        print("FEB")
    default:
        print("not special")
    }
}
specialMonth(a: 1)
specialMonth(a: 5)
