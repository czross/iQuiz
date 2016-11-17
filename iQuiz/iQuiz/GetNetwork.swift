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
    
    func getJsonData() -> NSArray {
        var ret: NSArray = []
        let request = NSMutableURLRequest(url: self.url as URL)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            // Check for error
            guard error == nil && data != nil else
            {
                print("Error: \(error)")
                return
            }
            // Print out response string
            let responseString = try! JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! NSArray
            print("Response String in getJasonData() \(responseString)")
            ret = responseString
            print(ret)
        }
        
        task.resume()
        print(ret)
        return ret
    }

}




