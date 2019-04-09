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
        self.tableView.dataSource = self
    }
    
    @IBAction func addButton_clicked(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "segueToAddViewController", sender: nil)
    }
    
    @IBAction func priorityFilter_selected(_ sender: UISegmentedControl) {
        print("🤖 \(#function)")
    }
    
}

extension ToDoViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! ToDoTableViewCell
        return cell
    }
    
}

