//
//  SecondViewController.swift
//  SendImageByButton
//
//  Created by Maru on 03/10/2018.
//  Copyright © 2018 Maru. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var secondCount = 0
    
    @IBOutlet weak var display: UIImageView!
    
    var imageName = "800width.jpg"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let getImage = UIImage(named: imageName)
        display.image = getImage
        countLabel.text = String(secondCount)
        
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
