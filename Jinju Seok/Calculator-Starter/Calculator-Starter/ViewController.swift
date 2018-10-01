//
//  ViewController.swift
//  Calculator-Starter
//
//  Created by giftbot on 2018. 6. 1..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tempInputArr: [String] = []
    var userInputArr: [String] = []
    var printingArr: [String] = []
    var operatorArr: [String] = []
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
  }
    
    
    @IBAction func onClickACBtn(_ sender: UIButton) {
        tempInputArr.removeAll()
        userInputArr.removeAll()
        printingArr.removeAll()
        operatorArr.removeAll()
        
        outputLabel.text = "0"
    }
    
    
    @IBAction func onClickNumAndOpBtn(_ sender: UIButton) {
        
        print(sender.currentTitle!.utf8.map{Int($0)}[0])
        if "*" == sender.currentTitle! || "+" == sender.currentTitle! || "-" == sender.currentTitle! || "/" == sender.currentTitle!
        {
            var strTemp = ""
            for idx in 0 ..< tempInputArr.count
            {
                strTemp += tempInputArr[idx]
            }
            
            userInputArr.append(strTemp)
            userInputArr.append(sender.currentTitle!)
            
            tempInputArr.removeAll()
        }
        else
        {
            tempInputArr.append(sender.currentTitle!)
            outputLabel.text = tempInputArr.joined()
        }
        
        print(userInputArr)
    }
    
    func isThisOperator(value: String) -> Bool {
        let confirm = value.utf8.map{Int($0)}[0]
        switch confirm {
        case 43:
            return true
        case 45:
            return true
        case 42:
            return true
        case 47:
            return true
        default:
            return false
        }
    }
    
    @IBAction func onClickEqualBtn(_ sender: UIButton)
    {
//        userInputArr = ["2", "-", "10", "/", "5", "*", "6", "+", "4"]
//        userInputArr = ["2", "-", "10", "/", "5", "*", "6", "+", "4", "*", "2", "-", "9"]
        
        userInputArr.append(tempInputArr.joined())
        
        for value in userInputArr
        {
            if false == isThisOperator(value: value)
            {
                printingArr.append(value)
            }
            else
            {
                if (value == "*") || (value == "/")
                {
                    if operatorArr.count == 0
                    {
                        operatorArr.append(value)
                    }
                    else
                    {
                        let lastOperator: String = operatorArr[operatorArr.endIndex-1]
                        if (lastOperator == "*") || (lastOperator == "/")
                        {
                            printingArr.append(lastOperator)
                            operatorArr.removeLast()
                            operatorArr.append(value)
                        }
                        else
                        {
                            operatorArr.append(value)
                        }
                    }
                }
                else
                {
                    if operatorArr.count == 0
                    {
                        operatorArr.append(value)
                    }
                    else
                    {
                        let lastOperator: String = operatorArr[operatorArr.endIndex-1]
                        if (lastOperator == "*") || (lastOperator == "/")
                        {
                            printingArr.append(lastOperator)
                            operatorArr.removeLast()
                            
                            if operatorArr.count > 0
                            {
                                for _ in 0 ..< operatorArr.count
                                {
                                    printingArr.append(operatorArr.removeLast())
                                }
                            }
                            operatorArr.append(value)
                        }
                        else
                        {
                            operatorArr.append(value)
                        }
                    }
                    
                }
            }
        }
        
        if operatorArr.count > 0
        {
            for _ in 0 ..< operatorArr.count
            {
                printingArr.append(operatorArr.removeLast())
            }
        }
        
        
        print(printingArr)
        
        var calculationStack: [Int] = []

            for calculation in printingArr {
            switch calculation {
            case "+":
                let plusReturn = Int(calculationStack[calculationStack.endIndex-2]) + Int(calculationStack[calculationStack.endIndex-1])
                calculationStack.remove(at: calculationStack.endIndex-2)
                calculationStack.remove(at: calculationStack.endIndex-1)
                calculationStack.append(plusReturn)
            case "-":
                let minusReturn = Int(calculationStack[calculationStack.endIndex-2]) - Int(calculationStack[calculationStack.endIndex-1])
                calculationStack.remove(at: calculationStack.endIndex-2)
                calculationStack.remove(at: calculationStack.endIndex-1)
                calculationStack.append(minusReturn)
            case "*":
                let multipleReturn = Int(calculationStack[calculationStack.endIndex-2]) * Int(calculationStack[calculationStack.endIndex-1])
                calculationStack.remove(at: calculationStack.endIndex-2)
                calculationStack.remove(at: calculationStack.endIndex-1)
                calculationStack.append(multipleReturn)
            case "/":
                let divisionReturn = Int(calculationStack[calculationStack.endIndex-2]) / Int(calculationStack[calculationStack.endIndex-1])
                calculationStack.remove(at: calculationStack.endIndex-2)
                calculationStack.remove(at: calculationStack.endIndex-1)
                calculationStack.append(divisionReturn)
            default:
                calculationStack.append(Int(calculation)!)
            }
        }
        
//        print(calculationStack[0])
        outputLabel.text = String(calculationStack[0])
        
        
        
        
    }
    
    
    
}

