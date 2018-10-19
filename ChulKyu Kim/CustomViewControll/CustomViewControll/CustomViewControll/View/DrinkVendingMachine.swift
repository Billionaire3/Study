//
//  DrinkVendingMachine.swift
//  CustomViewControll
//
//  Created by Maru on 17/10/2018.
//  Copyright © 2018 Maru. All rights reserved.
//

import UIKit

protocol DrinkViewDelegate {
    func increase(_ drinkView: DrinkVendingMachine)
    func decrease(_ drinkView: DrinkVendingMachine)
}

// 코드로 작성한 것을 스토리보드에서 볼 수 있게
@IBDesignable

final class DrinkVendingMachine: UIView {

    private let drinkImageView: UIImageView = UIImageView()
    private let decreaseButton: UIButton = UIButton()
    private let increaseButton: UIButton = UIButton()
    private let countLabel: UILabel = UILabel()
    
    @IBInspectable  // 프로퍼티를 스토리보드에서도 변경 가능하게
    var image: UIImage? {
        didSet {
            drinkImageView.image = image
        }
    }
    var delegate: DrinkViewDelegate?
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // UI configure
        configure()
        autoLayout()
    }
    
    
// 스토리보드로 뷰를 만들었을 때 실행되는 init
   required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    
        // UI configure
        configure()
        autoLayout()
    }
  
   private func configure() {
    
    // drinkImageView
    drinkImageView.image = self.image
    drinkImageView.backgroundColor = UIColor.orange
    drinkImageView.contentMode = .scaleAspectFit
    
    // button
    decreaseButton.setTitle("-", for: .normal)
    decreaseButton.addTarget(self, action: #selector(tapDecrease(_:)), for: .touchUpInside)
    
    increaseButton.setTitle("+", for: .normal)
    increaseButton.addTarget(self, action: #selector(tapIncrease(_:)), for: .touchUpInside)
    
    // label
    countLabel.text = "0"
    countLabel.backgroundColor = UIColor.black
    countLabel.textColor = UIColor.orange
    
    // addSubView
    self.addSubview(drinkImageView)
    self.addSubview(decreaseButton)
    self.addSubview(increaseButton)
    self.addSubview(countLabel)
    
    }
    
    private func autoLayout() {
        
    // ImageView
        drinkImageView.translatesAutoresizingMaskIntoConstraints = false
        
        drinkImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        drinkImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        drinkImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        drinkImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.6).isActive = true
        
    //  countLabel
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        
        countLabel.topAnchor.constraint(equalTo: drinkImageView.bottomAnchor, constant: 30).isActive = true
        countLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        countLabel.leadingAnchor.constraint(equalTo: decreaseButton.trailingAnchor, constant: 10).isActive = true
        countLabel.trailingAnchor.constraint(equalTo: increaseButton.leadingAnchor, constant: -10).isActive = true
        countLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        
    // decreaseButton
        decreaseButton.translatesAutoresizingMaskIntoConstraints = false
        
        decreaseButton.heightAnchor.constraint(equalTo: countLabel.heightAnchor, multiplier: 1).isActive = true
        decreaseButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        decreaseButton.trailingAnchor.constraint(equalTo: countLabel.leadingAnchor, constant: -10).isActive = true
        decreaseButton.centerYAnchor.constraint(equalTo: countLabel.centerYAnchor).isActive = true
        
    // increaseButton
        increaseButton.translatesAutoresizingMaskIntoConstraints = false
        
        increaseButton.heightAnchor.constraint(equalTo: countLabel.heightAnchor, multiplier: 1).isActive = true
        increaseButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        increaseButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
       increaseButton.leadingAnchor.constraint(equalTo: countLabel.trailingAnchor, constant: 10).isActive = true
        
        
        
    }
    
    @objc private func tapIncrease(_ sender: UIButton) {
        self.delegate?.increase(self)
    }
    
    @objc private func tapDecrease(_ sender: UIButton) {
        self.delegate?.decrease(self)
    }
}
