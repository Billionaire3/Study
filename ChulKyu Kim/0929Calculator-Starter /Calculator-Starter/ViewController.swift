//
//  ViewController.swift
//  Calculator-Starter
//
//  Created by giftbot on 2018. 6. 1..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = "0"
    }
    
    var stringToNum: String? = "0" // label에 나오는 숫자
    var firstNum = 0.0             // 연산자 입력 전에 입력 되었던 숫자
    var lastNum = 0.0              // 연산자 입력 후 입력되는 숫자
    var userIsTyping = false       // 연산자 입력 유무를 확인하기 위한 변수
    var operation: String? = nil   // 입력된 연산자를 저장하는 변수
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func numberButton(_ sender: UIButton) {
        // 연산자 입력 후, 기존 숫자는 초기화하고 새로운 숫자 입력 가능
        // 기존 숫자는 연산자 입력시 firstNum에 저장되도록 되어있음
        if userIsTyping == true {
            stringToNum = nil
            stringToNum? += (sender.currentTitle!)
            userIsTyping = false
        }
        // 처음 입력하는 숫자의 값이 0일 때는 0만 디스플레이에 표시
        // 0 이외의 숫자가 입력되기 시작하면 숫자들을 붙여서 디스플레이에 표시
        if stringToNum == nil || stringToNum == "0" {
            stringToNum = (sender.currentTitle!)
        } else {
            stringToNum? += (sender.currentTitle!)
        }
        display.text = stringToNum
    }
    
    
    @IBAction func calculation(_ sender: UIButton) {
        if sender.currentTitle! != "AC", sender.currentTitle! != "="
        {
            firstNum = Double(display.text!)!
            print(firstNum)
            switch sender.currentTitle! {
            case "+":
                display.text = "\(firstNum)" // firstNum만 디스플레이에 출력하면 연산자 중복입력해도 오류X
                operation = "+"
            case "-":
                display.text = "\(firstNum)"
                operation = "-"
            case "*":
                display.text = "\(firstNum)"
                operation = "*"
            case "/":
                display.text = "\(firstNum)"
                operation = "/"
            default:
                print("Try Again!")
                
            }
            userIsTyping = true
            
        } else if sender.currentTitle! == "=" {
            lastNum = Double(stringToNum!)!
            print(lastNum)
            if operation == "+" {
                display.text = String(firstNum + lastNum)
            } else if operation == "-" {
                display.text = String(firstNum - lastNum)
            } else if operation == "*" {
                display.text = String(firstNum * lastNum)
            } else if operation == "/" {
                display.text = String(firstNum / lastNum)
            }
            userIsTyping = true // "=" 여러번 눌러도 오류 발생 X, "=" 이후에 숫자 입력하면 새로운 숫자 입력 가능
//            stringToNum = nil
            
        } else if sender.currentTitle! == "AC" {
            stringToNum = "0"
            firstNum = 0
            lastNum = 0
            operation = nil
            display.text = "0"
        }
        
    }
    
    
    
}

