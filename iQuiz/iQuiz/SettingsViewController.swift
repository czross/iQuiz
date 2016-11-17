//
//  SettingsViewController.swift
//  iQuiz
//
//  Created by Brian Ross on 11/17/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
   
    @IBOutlet weak var urlLable: UILabel!
    @IBOutlet weak var urlEntry: UITextField!
    
    var quiz: Quiz2 = Quiz2("https://tednewardsandbox.site44.com/questions.json")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        urlLable.text = quiz.url
        print(quiz.mainData)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func reloadBtnInput(_ sender: AnyObject) {
    }

    @IBAction func submitBtnInut(_ sender: AnyObject) {
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let dest: MainTableViewController = segue.destination as! MainTableViewController
        dest.quiz = self.quiz
        
    }
    

}
