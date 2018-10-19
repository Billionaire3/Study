//
//  ViewController.swift
//  SendImageByButton
//
//  Created by Maru on 03/10/2018.
//  Copyright © 2018 Maru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    var firstCount = 1
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let sc = segue.destination as? SecondViewController else { return }
        
        sc.secondCount = firstCount
        
        if segue.identifier == "Dog" {
         sc.imageName = "dog.jpeg"
            
        } else if segue.identifier == "Cat" {
            sc.imageName = "cat.jpg"
            
        } else if segue.identifier == "Deer" {
            sc.imageName = "deer.jpg"
        }
    }
    
    @IBAction func unwindToViewController(_ sender: UIStoryboardSegue) {
        guard let ac = sender.source as? SecondViewController else { return }
        firstCount = Int(ac.countLabel.text!)! + 1
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "Deer" {
        return firstCount < 11 ? true : false
        }
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

