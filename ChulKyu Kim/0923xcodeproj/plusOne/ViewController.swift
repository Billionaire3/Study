//
//  ViewController.swift
//  plusOne
//
//  Created by Maru on 21/09/2018.
//  Copyright © 2018 Maru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    let textLabel = UILabel()
//    let button = UIButton()
    
    
    @IBOutlet weak var display: UILabel!
    var value = 0
    var onOffState = ""
    
    @IBOutlet weak var switchstates: UILabel!
    @IBOutlet weak var sw1: UISwitch!
    @IBOutlet weak var seg1: UISegmentedControl!
    
    
    
    @IBAction func plusOne(_ sender: UIButton) {
        value += 1
        display.text = "\(value)"
    }
    
    @IBAction func onOff(_ sender: UISwitch) {
        if sw1.isOn {
            switchstates.text = "On"
        } else {
            switchstates.text = "Off"
        }
    }

    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        let title = sender.titleForSegment(at: index)
        display.text = title
        
//        if seg1.selectedSegmentIndex == 0 {
//            display.text = sender.titleForSegment(at: 0)
//        } else if seg1.selectedSegmentIndex == 1 {
//            display.text = sender.titleForSegment(at: 1)
//        } else if seg1.selectedSegmentIndex == 2 {
//            display.text = sender.titleForSegment(at: 2)
//        } else if seg1.selectedSegmentIndex == 3 {
//            display.text = sender.titleForSegment(at: 3)
//        } else if seg1.selectedSegmentIndex == 4 {
//            display.text = sender.titleForSegment(at: 4)
//        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
//        textLabel.frame = CGRect(x: 200, y: 200, width: 600, height: 300)
//        textLabel.text = "0"
//        textLabel.font = UIFont.systemFont(ofSize: 25)
//        textLabel.textColor = .orange
//
//        button.frame = CGRect(x: 200, y: 400, width: 400, height: 250)
//        view.addSubview(UILabel())
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

