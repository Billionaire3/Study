//
//  VendingMachineViewController.swift
//  CustomViewControll
//
//  Created by Maru on 17/10/2018.
//  Copyright © 2018 Maru. All rights reserved.
//

import UIKit

final class VendinMachineViewController: UIViewController, DrinkViewDelegate {
    
   
    
    @IBOutlet var kindOfDrinkViews: [DrinkVendingMachine]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for drink in kindOfDrinkViews {
            drink.delegate = self
        }
    }
    
    
    
    func increase(_ drinkView: DrinkVendingMachine) {
        print("플러스")
    }
    
    func decrease(_ drinkView: DrinkVendingMachine) {
        print("마이너스")
    }
    
    
    
}
