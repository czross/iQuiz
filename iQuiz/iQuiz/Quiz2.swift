//
//  Quiz2.swift
//  iQuiz
//
//  Created by Brian Ross on 11/16/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import Foundation
import UIKit

class Quiz2: NSObject, NSCoding{
    var mainData: NSArray?
    var chosenQuiz: Int?
    
    // archive paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("quiz")
    
    //Types 
    struct PropertyKey {
        static let dataKey = "data"
    }
    
    init(_ array: NSArray?) {
        self.mainData = array
        self.chosenQuiz = nil
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(mainData, forKey: PropertyKey.dataKey)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let mainData = aDecoder.decodeObject(forKey: PropertyKey.dataKey) as! NSArray
        self.init(mainData)
    }
    
    func retNumQuestionTypes() -> Int {
        if (self.mainData != nil) {
            return self.mainData!.count
        } else {
            return 3
        }
    }
    
    func choose(quiz: Int) {
        self.chosenQuiz = quiz
    }
    
    func set(data: NSArray) {
        self.mainData = data
    }
    
    
}
