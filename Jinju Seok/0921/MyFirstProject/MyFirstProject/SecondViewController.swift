//
//  SecondViewController.swift
//  MyFirstProject
//
//  Created by Jinju Seok on 2018. 9. 21..
//  Copyright © 2018년 Jinju Seok. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let button = UIButton()
    let textLabel = UILabel()
    var valueOfButton : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        
        button.backgroundColor = .white
        
        //print(viw.frame.width) -> 가로길이 확인 가능
        //print(UIScreen.main.bounds) -> 해당 기기의 전체 길이 확인 가능
        //아이폰10이나 아이폰X같은 경우 노치(윗부분 가리는 부분)을 생각해야한다
        button.frame = CGRect(x: 120, y: 50, width: 200, height: 50)
        button.setTitle(String(valueOfButton), for: .normal)
        button.setTitleColor(.black, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
        
        view.addSubview(button)
        
        textLabel.frame = (CGRect(x: 120, y: 150, width: 200, height: 50))
        textLabel.text = "My Text"
        textLabel.font = UIFont.systemFont(ofSize: 25)
        textLabel.textColor = .white
        view.addSubview(textLabel)
        
    }
    
    @objc func buttonDidTap(_ sender: UIButton) {
        //button.setTitle("\(String(Int(self.button.currentTitle!)! + 1))", for: .normal)
        
        valueOfButton += 1
        button.setTitle(String(valueOfButton), for: .normal)
        print("Button Tap with Sender")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

// 과제 : onOffSwitch.addTarget..
