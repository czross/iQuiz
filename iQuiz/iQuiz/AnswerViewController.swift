//
//  AnswerViewController.swift
//  iQuiz
//
//  Created by Brian Ross on 11/10/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var displayMessage: UILabel!


    var quiz: Quiz2 = Quiz2(nil)
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad() /*
        // var currentQuestions: [String: [String]]
        let num = quiz.questionNum - 1
        let choose = quiz.currentAnswers[num] - 1
        let realResponse = quiz.getAnswers()
        let response = realResponse[choose]
        if (quiz.chosenAnswer == choose) {
            displayMessage.text = "You are correct the answer is \(response)"
            quiz.answerCorrect += 1
        } else {
            displayMessage.text = "The correct the answer is \(response)"
        }
        quiz.questionNum += 1
        quiz.answerTotals += 1 */
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
        if segue.identifier == "toQuestion" {
            let dest: QuestionViewController = segue.destination as! QuestionViewController
            dest.quiz = self.quiz
        }
    }
    
    
}
