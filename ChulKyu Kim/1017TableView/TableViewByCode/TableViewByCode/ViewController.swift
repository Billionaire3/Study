//
//  ViewController.swift
//  TableViewByCode
//
//  Created by Maru on 18/10/2018.
//  Copyright © 2018 Maru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "cell"
    let arr = ["A", "B", "C", "D", "E"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
//        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell

    }

    

//    func numberOfSections(in tableView: UITableView) -> Int {
//        return arr.count
//    }
}

