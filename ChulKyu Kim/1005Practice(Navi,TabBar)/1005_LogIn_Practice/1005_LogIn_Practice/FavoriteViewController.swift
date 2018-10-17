//
//  FavoriteViewController.swift
//  1005_LogIn_Practice
//
//  Created by Maru on 06/10/2018.
//  Copyright © 2018 Maru. All rights reserved.
//

import UIKit

class FavoriteViewController: UITabBarController {

    @IBOutlet weak var favoriteLabel: UILabel!
    var flText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteLabel.text = flText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
