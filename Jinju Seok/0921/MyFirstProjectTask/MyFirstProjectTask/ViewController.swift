//
//  ViewController.swift
//  MyFirstProjectTask
//
//  Created by Jinju Seok on 2018. 9. 26..
//  Copyright © 2018년 Jinju Seok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mySwitch = UISwitch()
    let showOnOff = UILabel()
//    var textOnOff: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        showOnOff.backgroundColor = .white
        
        mySwitch.frame = (CGRect(x: 165, y: 300, width: 200, height: 50))
        view.addSubview(mySwitch)
        
        mySwitch.addTarget(self, action: #selector(switchChanged(sender:)), for: .touchUpInside)
        
        showOnOff.frame = (CGRect(x: 140, y: 200, width: 100, height: 40))
        showOnOff.text = "Switch OFF!"
        showOnOff.textColor = .red
        view.addSubview(showOnOff)
    }
    @objc func switchChanged(sender: UISwitch) {
        if sender.isOn == true {
            showOnOff.text = "Switch ON!"
        }
        else {
            showOnOff.text = "Swtich OFF!"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

