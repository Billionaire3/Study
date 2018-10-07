//
//  ViewController.swift
//  1005Practice(Navi,TabBar)
//
//  Created by Maru on 05/10/2018.
//  Copyright © 2018 Maru. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    
    struct SegueName {
        static let success = "success"
    }
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        super.prepare(for: segue, sender: sender)
        
    }
    
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        super.shouldPerformSegue(withIdentifier: identifier, sender: sender)
        
        let checkUser = UserNamePassword.check
        if identifier == SegueName.success,
            userName.text == checkUser.name,
            password.text == checkUser.password {
            
            
            return true
        }
        
        
        return true
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        
        if shouldPerformSegue(withIdentifier: SegueName.success, sender: sender) {
            performSegue(withIdentifier: SegueName.success, sender: sender)
            
        }
        
        let wrongAlert = UIAlertController(title: "Wrong", message: "Check your Id & Password", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        wrongAlert.addAction(okButton)
        present(wrongAlert, animated: true)
        
        //        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        //        let nextFc = storyBoard.instantiateViewController(withIdentifier: "FavoriteViewController")
        //        guard let fc = nextFc as? FavoriteViewController else { return }
        //        fc.fcLabelText = userName.text ?? ""
        //
        //        present(fc, animated: true)
        
    }
    
    @IBAction func unwindToLogIn(_ sender: UIStoryboardSegue) {
        userName.text = ""
        password.text = ""
    }
    
    
}

