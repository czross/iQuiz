//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Brian Ross on 11/9/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController  {

    var results: Int = 0
    var quiz: Quiz = Quiz()
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstBtnInpt: UIButton!
    @IBOutlet weak var secondBtnInput: UIButton!
    @IBOutlet weak var thirdBtnInput: UIButton!
    @IBOutlet weak var fourthBtnInput: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
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
