//
//  ViewController.swift
//  PageController
//
//  Created by Maru on 16/10/2018.
//  Copyright © 2018 Maru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var pageController: UIPageControl!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        configurePageControl()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UIScrollViewDelegate {
    
    func configurePageControl() {
        self.pageController.numberOfPages = 4
        self.pageController.currentPage = 0
        self.pageController.tintColor = UIColor.red
        self.pageController.pageIndicatorTintColor = UIColor.black
        self.pageController.currentPageIndicatorTintColor = UIColor.green
        self.view.addSubview(pageController)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageController.currentPage = Int(pageNumber)
    }

}


