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
        let answers = quiz.getAnswers()
        questionLabel.text = quiz.getQuestion()
        firstBtnInpt.setTitle(answers[0], for: UIControlState.normal)
        secondBtnInput.setTitle(answers[1], for: UIControlState.normal)
        thirdBtnInput.setTitle(answers[2], for: UIControlState.normal)
        fourthBtnInput.setTitle(answers[3], for: UIControlState.normal)
        
        if quiz.questionNum >= quiz.currentTitles.count {
            firstBtnInpt.isHidden = true
            secondBtnInput.isHidden = true
            thirdBtnInput.isHidden = true
            fourthBtnInput.isHidden = true
            questionLabel.text = "FINISHED!"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let dest: AnswerViewController = segue.destination as! AnswerViewController
        dest.quiz = self.quiz
    }
    

}
