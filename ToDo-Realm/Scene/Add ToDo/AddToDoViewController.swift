//
//  AddToDoViewController.swift
//  ToDo
//
//  Created by Giuseppe Sapienza on 11/03/2019.
//  Copyright © 2019 Giuseppe Sapienza. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    @IBOutlet weak var titleTextView: UITextView!
    @IBOutlet weak var tagTextField: UITextField!
    
    @IBOutlet var priorityButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in self.priorityButtons {
            guard let priority = Priority.init(rawValue: button.tag) else { return }
            button.backgroundColor = priority.color()
            button.layer.cornerRadius = button.frame.width/2
        }
        
    }

    @IBAction func addButton_clicked(_ sender: UIBarButtonItem) {
        print("🤖 \(#function)")
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func priorityButton_clicked(_ sender: UIButton) {
        let selectedButton = sender.tag
        
        guard
            let priority = Priority.init(rawValue: selectedButton)
        else {
            return
        }
        print("🤖 \(#function) \(selectedButton) \(priority)")
    }
}

