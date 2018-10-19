//
//  LogedViewController.swift
//  1005 Mini Project
//
//  Created by Bernard Hur on 2018. 10. 5..
//  Copyright © 2018년 Bernard Hur. All rights reserved.
//

import UIKit

class LogedViewController: UIViewController {
    
    // 저장된 유저디폴트 가져옮
    let storedLoginInfo = UserDefaults.standard.bool(forKey: "isUserLoggedIn")
    let storedUserEmail = UserDefaults.standard.string(forKey: "userEmail") ?? ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 유저디폴트가 폴스 이면 로그인 화면으로 이동
        if storedLoginInfo == false {
            performSegue(withIdentifier: "loginView", sender: self)
        }
    }
    
    @IBAction func logoutButton(_ sender: UIButton) {
        // 로그아웃 버튼 클릭시 유저디폴트 "폴스" 설정하고 로그인화면으로 넘어감
        let userDefaultsLoginInfo = UserDefaults.standard
        userDefaultsLoginInfo.set(false, forKey: "isUserLoggedIn")
        performSegue(withIdentifier: "loginView", sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("뷰 윌 어피어")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("뷰 디드 어피어")
        
        // 유저디폴트가 트루 이면 환영메세지 호출
        if storedLoginInfo == true {
            let myAlert = UIAlertController(title: "Welcome!!", message: "\(storedUserEmail)님, 환영합니다", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            myAlert.addAction(okAction)
            present(myAlert, animated: true, completion: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
