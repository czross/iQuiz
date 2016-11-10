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
    var quizQuestions: [String: [[String: [String]]]] //a Dictionary of arrays of a dictionary that has a String : [String] pairing
    var numQuizes: Int
    var quizName: [String]
    var quizDesc: [String]
    var answers: [[Int]]
    var chosenAnswer: Int
    var currentQuestions: [[String: [String]]]
    
    init() {
        self.chosenQuiz = ""
        self.quizQuestions = ["Start": [["Start": ["Start"]]]]
        self.numQuizes = 0
        self.quizName = ["blank"]
        self.quizDesc = ["blank"]
        self.answers = [[0]]
        self.chosenAnswer = 0
        self.currentQuestions = [["String": ["Start"]]]
    }
    
    func add(questions: [String: [[String: [String]]]]) {
        self.quizQuestions = questions
    }
    
    func add(quizNames: [String]) {
        self.quizName = quizNames
        self.numQuizes = self.quizName.count
    }
    
    func add(quizDescription: [String]) {
        self.quizDesc = quizDescription
    }
    
    func add(answer: [[Int]]) {
        self.answers = answer
    }
    
    func choose(answer: Int) {
        self.chosenAnswer = answer
    }
    
    func choose(quiz: Int) {
        self.chosenQuiz = self.quizName[quiz]
        self.currentQuestions = self.quizQuestions[self.chosenQuiz]!
    }
    
    

}
