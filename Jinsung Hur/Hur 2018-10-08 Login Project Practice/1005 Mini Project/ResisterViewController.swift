//
//  ResisterViewController.swift
//  1005 Mini Project
//
//  Created by Bernard Hur on 07/10/2018.
//  Copyright © 2018 Bernard Hur. All rights reserved.
//

import UIKit

final class ResisterViewController: UIViewController {
    
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var userRepeatPasswordTextField: UITextField!
    
    @IBAction func resisterButtonTapped(_ sender: UIButton) {
        let userEmail: String = userEmailTextField.text ?? ""
        let userPassword: String = userPasswordTextField.text ?? ""
        let userRepeatPassword: String = userRepeatPasswordTextField.text ?? ""
        
        if !userEmail.contains("@") {
            displayMyAlertMessage(showingMessage: "이메일 형식을 확인해 주세요")
        }
        
        if userPassword.count < 4 {
            displayMyAlertMessage(showingMessage: "패스워드는 4자리 이상으로 설정해주세요")
        }
        
        if userEmail.isEmpty || userPassword.isEmpty || userRepeatPassword.isEmpty {
            displayMyAlertMessage(showingMessage: "미입력 부분이 있습니다")
        }
        if userPassword != userRepeatPassword {
            displayMyAlertMessage(showingMessage: "동일한 암호를 입력해 주세요")
        }
        
        // UserDefaults 설정
        let userDefaultsEmail = UserDefaults.standard
        userDefaultsEmail.set(userEmail, forKey: "userEmail")
        let userDefaultsPassword = UserDefaults.standard
        userDefaultsPassword.set(userPassword, forKey: "userPassword")
        userDefaultsEmail.synchronize()
        userDefaultsPassword.synchronize()
        
        // 입력완료시 Alert 출력
        let myAlert = UIAlertController(title: nil, message: "등록이 완료 되었습니다", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { action in
            self.dismiss(animated: true, completion: nil)
        }
        myAlert.addAction(okAction)
        present(myAlert, animated: true, completion: nil)
    }
    
    // 에러시 표시될 얼럿창 펑션 구축
    public func displayMyAlertMessage(showingMessage: String) {
        let myAlert = UIAlertController(title: "오류", message: showingMessage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        myAlert.addAction(okAction)
        present(myAlert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad() }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() }
}
