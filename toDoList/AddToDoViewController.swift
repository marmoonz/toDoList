//
//  AddToDoViewController.swift
//  toDoList
//
//  Created by Scholar on 7/29/22.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    @IBOutlet weak var titleTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBAction func AddTapped(_ sender: Any) {
        
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
        
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
    
        
      }
        
        
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
