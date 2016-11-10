//
//  Quiz.swift
//  iQuiz
//
//  Created by Brian Ross on 11/8/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import UIKit

class Quiz {
    var chosenQuiz: String
    let quizQuestions: [[String: [String]]]
    let numQuizes: Int
    let quizName: [String]
    
    init(quizes: [[String: [String]]], quizNames: [String]) {
        self.chosenQuiz = ""
        self.quizQuestions = quizes
        self.numQuizes = quizes.count
        self.quizName = quizNames
    }
}
