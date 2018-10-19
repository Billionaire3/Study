//
//  PageControlOnlyCode.swift
//  PageController
//
//  Created by Maru on 16/10/2018.
//  Copyright © 2018 Maru. All rights reserved.
//

import UIKit

class PageControlOnlyCode: UIViewController {

    private let scrollView = UIScrollView()
    
    private let firstView = UIView()
    private let secondView = UIView()
    private let thirdView = UIView()
    private let lastView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
        scrollView.addSubview(firstView)
        scrollView.addSubview(secondView)
        scrollView.addSubview(thirdView)
        scrollView.addSubview(lastView)
        
        setupScrollView()
        setupFirstView()
        setupSecondView()
        setupThirdView()
        setupLastView()
        
        
        
        
        
    }

    func setupScrollView() {
        scrollView.backgroundColor = .gray
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
    }
    
    func setupFirstView() {
        firstView.backgroundColor = .blue
        firstView.translatesAutoresizingMaskIntoConstraints = false
        
        firstView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1).isActive = true
        firstView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 1).isActive = true
        
        firstView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0).isActive = true
        firstView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0).isActive = true
        firstView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0).isActive = true
        firstView.trailingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 0).isActive = true

    }
    
    func setupSecondView() {
        secondView.backgroundColor = .orange
        secondView.translatesAutoresizingMaskIntoConstraints = false
        
        secondView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1).isActive = true
        secondView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 1).isActive = true

        secondView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0).isActive = true
        secondView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0).isActive = true
//        secondView.leadingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: 0).isActive = true
        secondView.trailingAnchor.constraint(equalTo: thirdView.leadingAnchor, constant: 0).isActive = true
        
    }

    func setupThirdView() {
        thirdView.backgroundColor = .green
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        
        thirdView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1).isActive = true
        thirdView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 1).isActive = true

        thirdView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0).isActive = true
        thirdView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0).isActive = true
//        thirdView.leadingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: 0).isActive = true
        thirdView.trailingAnchor.constraint(equalTo: lastView.leadingAnchor, constant: 0).isActive = true
        
    }

    func setupLastView() {
        lastView.backgroundColor = .brown
        lastView.translatesAutoresizingMaskIntoConstraints = false
        
        lastView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1).isActive = true
        lastView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 1).isActive = true

        lastView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0).isActive = true
        lastView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0).isActive = true
//        lastView.leadingAnchor.constraint(equalTo: thirdView.trailingAnchor, constant: 0).isActive = true
        lastView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0).isActive = true

    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
