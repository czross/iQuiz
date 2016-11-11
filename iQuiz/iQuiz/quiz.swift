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
    var quizQuestions: [String: [String: [String]]] //a dictionary containing a String: [String] pairing
    var numQuizes: Int
    var quizName: [String]
    var quizDesc: [String]
    var answers: [[Int]]
    var chosenAnswer: Int
    var currentQuestions: [String: [String]]
    var currentTitles: [String]
    var questionNum: Int
    var currentAnswers: [Int]
    var answerTotals: Int
    var answerCorrect: Int
    
    init() {
        self.chosenQuiz = "Science"
        self.quizQuestions = ["Start": ["Start": ["Start"]]]
        self.numQuizes = 0
        self.quizName = ["Start"]
        self.quizDesc = ["Start"]
        self.answers = [[0]]
        self.chosenAnswer = 0
        self.currentQuestions = ["Start": ["Start"]]
        self.currentTitles = ["Start"]
        self.questionNum = 1
        self.currentAnswers = [0]
        self.answerTotals = 0
        self.answerCorrect = 0
    }
    
    func add(questions: [String: [String: [String]]]) {
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
        self.currentAnswers = self.answers[quiz]
        self.currentQuestions = self.quizQuestions[self.chosenQuiz]!
        for questions in self.currentQuestions.keys {
            self.currentTitles.append(questions)
        }
    }
    
    func getQuestion() -> String {
        return self.currentTitles[self.questionNum]
    }
    
    func getAnswers() -> [String] {
        return self.currentQuestions[self.getQuestion()]!
    }
    
    func answerSet() {
        self.answerTotals += 1
        if (self.chosenAnswer == self.currentAnswers[self.questionNum]) {
            self.answerCorrect += 1
        }
    }
}
