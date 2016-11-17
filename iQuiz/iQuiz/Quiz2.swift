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
    var onlineData: GetNetwork
    var url: String
    let urlDefault: String = ("https://tednewardsandbox.site44.com/questions.json")
    
    // archive paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("quiz")
    
    //Types 
    struct PropertyKey {
        static let dataKey = "data"
        static let urlKey = "url"
    }
    
    init(_ url: String?) {
        self.chosenQuiz = nil
        if (url != nil) {
            self.onlineData = GetNetwork(url: url!)
            self.url = url!
        } else {
            self.onlineData = GetNetwork(url: urlDefault)
            self.url = self.urlDefault
        }
        self.mainData = self.onlineData.getJsonData()
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(mainData, forKey: PropertyKey.dataKey)
        aCoder.encode(url, forKey: PropertyKey.urlKey)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let url = aDecoder.decodeObject(forKey: PropertyKey.urlKey) as! NSString
        self.init(url as String)
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
