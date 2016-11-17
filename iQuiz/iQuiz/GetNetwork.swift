//
//  GetNetwork.swift
//  iQuiz
//
//  Created by Brian Ross on 11/16/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import Foundation
import UIKit

class GetNetwork {
    var url: NSURL
    
    init(url: String) {
        if (url.isEmpty) {
            print("url entered is empty, set to defualt instead")
            self.url = NSURL(string: "https://tednewardsandbox.site44.com/questions.json")!
        }else {
            self.url = NSURL(string: url)!
        }
    }
    
    func getJsonData() -> NSDictionary {
        var ret: NSDictionary = ["" : AnyObject.self]
        let request = NSMutableURLRequest(url: self.url as URL)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request as URLRequest) {data, response, error in
            if error != nil {
                print(error)
                return
            }
            
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            print(responseString)
            
            do {
                if let dict = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary {
                    
                    // Print out dictionary
                    print(dict)
                    ret = dict
                    // Get value by key
                    let firstNameValue = dict["userName"] as? String
                    print(firstNameValue!)
                    
                    }
                } catch let error as NSError {
                    print(error.localizedDescription)
                }
        }
        
        task.resume()
        return ret
    }
}




