//
//  ViewController.swift
//  ToDo-Realm
//
//  Created by Giuseppe Sapienza on 11/03/2019.
//  Copyright © 2019 Giuseppe Sapienza. All rights reserved.
//

import UIKit

class ToDoViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addButton_clicked(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "segueToAddViewController", sender: nil)
    }
    
    @IBAction func priorityFilter_selected(_ sender: UISegmentedControl) {
        print("🤖 \(#function)")
    }
    
}

