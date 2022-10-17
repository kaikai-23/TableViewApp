//
//  AddListViewController.swift
//  TableViewApp
//
//  Created by 寳門海 on 2022/10/16.
//

import UIKit

class AddListViewController: UIViewController {

    
    @IBOutlet weak var addText: UITextField!
    
    var taskArray: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefaults = UserDefaults.standard

       //"add"というキーで保存された値がなにかある -> 値をtaskArrayへ
       if userDefaults.object(forKey: "add") != nil {
           taskArray = userDefaults.object(forKey: "add") as! [String]
       }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTask(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        
        if addText.text != "" {
                    taskArray.append(addText.text!)
                    userDefaults.set(taskArray, forKey: "add")
                    self.navigationController?.popViewController(animated: true)
                }
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
