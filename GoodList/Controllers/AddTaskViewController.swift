//
//  AddTaskViewController.swift
//  GoodList
//
//  Created by Ezequiel Parada Beltran on 03/12/2020.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    @IBOutlet weak var prioritySegmentedControl: UISegmentedControl!
    @IBOutlet weak var taskTitleTextField: UITextField!
    
    @IBAction func save(){
        guard let priority = Priority(rawValue: prioritySegmentedControl.selectedSegmentIndex),
              let title = taskTitleTextField.text else { return  }
        
        let task = Task(title: title, priority: priority)
    }
    
}
