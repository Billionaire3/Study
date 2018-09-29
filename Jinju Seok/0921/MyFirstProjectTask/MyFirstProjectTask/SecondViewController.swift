//
//  Second ViewController.swift
//  MyFirstProjectTask
//
//  Created by Jinju Seok on 2018. 9. 26..
//  Copyright © 2018년 Jinju Seok. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let titleLabel = UILabel()
    var selectedItemName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        titleLabel.backgroundColor = .black
        titleLabel.textColor = .white
        
        let list = ["맥주", "소주", "막걸리", "와인", "보드카"]
        let mySegmentedControl = UISegmentedControl(items: list)
        mySegmentedControl.selectedSegmentIndex = 0
        titleLabel.text = mySegmentedControl.titleForSegment(at: mySegmentedControl.selectedSegmentIndex)!

        mySegmentedControl.addTarget(self, action: #selector(showSelectedItem(sender:)), for: .valueChanged)
        
        mySegmentedControl.frame = (CGRect(x: 60, y: 300, width: 250, height: 40))
        view.addSubview(mySegmentedControl)
        
        titleLabel.frame = (CGRect(x: 85, y: 200, width: 200, height: 40))
        view.addSubview(titleLabel)
    }
    
    @objc func showSelectedItem(sender: UISegmentedControl){
        selectedItemName = sender.titleForSegment(at: sender.selectedSegmentIndex)!
        titleLabel.text = selectedItemName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
