//
//  ToDoTableViewCell.swift
//  ToDo
//
//  Created by Giuseppe Sapienza on 11/03/2019.
//  Copyright © 2019 Giuseppe Sapienza. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {
    
    @IBOutlet var toDoView: UIView!
    @IBOutlet var toDoTitleLabel: UILabel!
    @IBOutlet var toDoTagLabel: UILabel!
    @IBOutlet var toDoPriorityView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.toDoView.layer.cornerRadius = 6
        self.toDoPriorityView.layer.cornerRadius = self.toDoPriorityView.frame.width/2
    }
    
}
