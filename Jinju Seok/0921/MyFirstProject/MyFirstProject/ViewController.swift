//
//  ViewController.swift
//  MyFirstProject
//
//  Created by Jinju Seok on 2018. 9. 21..
//  Copyright © 2018년 Jinju Seok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //  스토리보드와 연결되었다는걸 알려주는 키워드로 @IBOutlet.. 기존 공부때 표현 방식은? var innerView1: UIView = UIView(frame: UIView!)
    @IBOutlet weak var innerView: UIView!
    
    @IBOutlet weak var someButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .yellow
        innerView.backgroundColor = .red
        
        someButton.backgroundColor = .cyan
        someButton.setTitleColor(.black, for: .normal)
        someButton.setTitleColor(.magenta, for: .selected)
        //UIControlState : nomal, highlighted, selected
        
    }
    //sender : event를 발생시킨 객체 : 여기서는 버튼,,
    //sender typecasteing
    //Any <-> UIButton
    @IBAction func didTapButton(_ sender: UIButton) {
        print("Tap Button")
        
        print(sender)   //좌표, 크기 등 버튼에 대한 정보를 볼 수 있음
//        sender.isSelected     //Any 타입이라서 어떤 속성인지 몰라 사용 불가
//        (sender as? UIButton)?.isSelected = ! someButton.isSelected
//        //as는 불가, ?나 !로 해야함 인데 이거 뭐야 에러나
//        근데 굳이 그렇게 하지말구 그냥 끌어올때 버튼 타입 바꾸기
        sender.backgroundColor = .magenta
        
        sender.isSelected = !sender.isSelected
        //not true = false, not false = true.. 누를때마다 색상 변경 (nomal <-> selected)
//        Xcode 10에서는 toggle 제공
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

