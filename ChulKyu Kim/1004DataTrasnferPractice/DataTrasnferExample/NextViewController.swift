//
//  DisplayViewController.swift
//  DataTrasnferExample
//
//  Created by giftbot on 03/10/2018.
//  Copyright © 2018 giftbot. All rights reserved.
//

import UIKit

final class NextViewController: UIViewController {
  
  @IBOutlet weak var displayLabel: UILabel!
  var displayText = "DisplayText"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    displayLabel.text = displayText
//    displayLabel.text = 
  }
}
