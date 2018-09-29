//
//  AppDelegate.swift
//  MyFirstProject
//
//  Created by Jinju Seok on 2018. 9. 21..
//  Copyright © 2018년 Jinju Seok. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    //didfinishlaunch..-> 여기가 제일 먼저 시작됨
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //기기의 전체 스크린 크기로 uiwindow의 크기를 결정하고 객체를 생성
        window = UIWindow(frame: UIScreen.main.bounds)
        
        //어떤 뷰 컨트롤러부터 만들기 시작할지 정해주는것 -> 스토리보드에 기존 있던걸 안쓰고 새로 만들어버림..
//        근데 스토리보드에서 만들어서 끌어당기고 어쩌고 했던 객체와 방금 만든 코드랑 다른애.. 따라서 error
//        window?.rootViewController = ViewController()
        window?.rootViewController = SecondViewController()
            //secondviecontroller라는 클래스 자체는 스토리보드에서 구성했던 애와 또다른 객체
            //코드부에서 설정했던 백그라운드 컬러는 무조건 실행되므로 컬러는 있음
        
//        키 윈도우(하나가 보여지는)로 만들고, 눈에 보여지게 만들겠다
        window?.makeKeyAndVisible()
        
        return true
    }
    
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        print("AnyapplicationDidFinishLaunching")
    }
    

    func applicationWillResignActive(_ application: UIApplication) {
        print("applicationWillResignActive")
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationDidEnterBackground")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("applicationWillEnterForeground")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate")
    }


}

