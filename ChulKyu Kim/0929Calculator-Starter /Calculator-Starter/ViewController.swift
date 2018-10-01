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
    
    var stringToNum: String? = nil
    var firstNum = 0.0
    var lastNum = 0.0
    var userIsTyping = false
    var operation = ""
    var lastCalculation = 0.0
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func numberButton(_ sender: UIButton) {
        if userIsTyping == true {
            stringToNum = nil
            stringToNum? += (sender.titleLabel!.text)!
            userIsTyping = false
        }
        
        if stringToNum == nil || stringToNum == "0" {
            stringToNum = (sender.titleLabel?.text)
        } else {
            stringToNum? += (sender.titleLabel!.text)!
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
                display.text = "\(firstNum) + "
                operation = "+"
            case "-":
                display.text = "\(firstNum) - "
                operation = "-"
            case "*":
                display.text = "\(firstNum) * "
                operation = "*"
            case "/":
                display.text = "\(firstNum) / "
                operation = "/"
            default:
                print("Try Again!")
                
            }
            userIsTyping = true
            
        } else if sender.currentTitle! == "=" {
            lastNum = Double(stringToNum!)!
            if operation == "+" {
                display.text = String(firstNum + lastNum)
            } else if operation == "-" {
                display.text = String(firstNum - lastNum)
            } else if operation == "*" {
                display.text = String(firstNum * lastNum)
            } else if operation == "/" {
                display.text = String(firstNum / lastNum)
            }
            stringToNum = nil
            
        } else if sender.currentTitle! == "AC" {
            stringToNum = nil
            firstNum = 0
            lastNum = 0
            operation = ""
            display.text = "0"
        }
        
    }
    
    
    
}

