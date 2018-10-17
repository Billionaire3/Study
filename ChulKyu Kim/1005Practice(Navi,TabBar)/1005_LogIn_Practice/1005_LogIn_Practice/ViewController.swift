//
//  ViewController.swift
//  1005_LogIn_Practice
//
//  Created by Maru on 06/10/2018.
//  Copyright © 2018 Maru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    struct SegueName {
        static let success = "success"
    }
    
    @IBOutlet weak var userNameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        super.shouldPerformSegue(withIdentifier: identifier, sender: sender)
        
        let userClass = UserData.user
        if identifier == SegueName.success,
            userNameField.text == userClass.userName,
            passwordField.text == userClass.Password
        {
            return true
        }
        
        return false
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
//        guard let fv = segue.destination as
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        guard shouldPerformSegue(withIdentifier: SegueName.success, sender: sender) else { return }
        performSegue(withIdentifier: SegueName.success, sender: sender)
        
        
    }
    
    
    
    @IBAction func unwindToLogIn(_ sender: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
    }
    
    
}

