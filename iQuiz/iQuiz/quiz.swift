//
//  Quiz.swift
//  iQuiz
//
//  Created by Chris Ross on 11/8/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import UIKit

class Quiz {
    var chosenQuiz: String
    let quizQuestions: [[String: [String]]] // array of a dictionary that has a String : [String] pairing
    let numQuizes: Int
    let quizName: [String]
    let quizDesc: [String]
    let answers: [[Int]]
    var chosenAnswer: Int
    
    init(quizes: [[String: [String]]], quizNames: [String], quizDescription: [String],
         answerArray: [[Int]]) {
        self.chosenQuiz = ""
        self.quizQuestions = quizes
        self.numQuizes = quizes.count
        self.quizName = quizNames
        self.quizDesc = quizDescription
        self.answers = answerArray
        self.chosenAnswer = 0
    }
    
    func choose(this: Int) {
        self.chosenAnswer = this
    }

}
