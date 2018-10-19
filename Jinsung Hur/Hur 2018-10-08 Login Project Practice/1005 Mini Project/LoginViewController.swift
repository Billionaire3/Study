//
//  ViewController.swift
//  1005 Mini Project
//
//  Created by Bernard Hur on 2018. 10. 5..
//  Copyright © 2018년 Bernard Hur. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var userIcon: UIImageView!
    @IBOutlet weak var lockIcon: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    @IBAction func loginButton(_ sender: UIButton) {
        let userEmail = emailTextField.text
        let userPassword = pwTextField.text
        
        let storedEmail = UserDefaults.standard.string(forKey: "userEmail")
        let storedPassword = UserDefaults.standard.string(forKey: "userPassword")
        
        if storedEmail == userEmail {
            if storedPassword == userPassword {
                
                // 로그인 성공 메세지
                let myAlert = UIAlertController(title: nil, message: "로그인 되었습니다", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default) { action in
                    self.dismiss(animated: true, completion: nil)
                }
                myAlert.addAction(okAction)
                present(myAlert, animated: true, completion: nil)
                
                // 로그인 상태 저장
                let userDefaultsLoginInfo = UserDefaults.standard
                userDefaultsLoginInfo.set(true, forKey: "isUserLoggedIn")
                userDefaultsLoginInfo.synchronize()
            } else {
                displayMyAlertMessage(showingMessage: "패스워드를 확인해 주세요")
            }
        }   else {
            displayMyAlertMessage(showingMessage: "등록되지 않은 이메일 입니다")
        }
    }
    
    public func displayMyAlertMessage(showingMessage: String) {
        let myAlert = UIAlertController(title: "오류", message: showingMessage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        myAlert.addAction(okAction)
        present(myAlert, animated: true, completion: nil)
    }
    
    
    @IBAction func registerButton(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(LoginViewController.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(LoginViewController.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0{
                self.view.frame.origin.y -= keyboardSize.height * 0.5
            } } }
    @objc func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y += keyboardSize.height * 0.1
            } } }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() }
}

