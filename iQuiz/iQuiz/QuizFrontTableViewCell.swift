//
//  QuizFrontTableViewCell.swift
//  iQuiz
//
//  Created by Brian Ross on 11/6/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import UIKit

class QuizFrontTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgCell: UIImageView!
    @IBOutlet weak var descCell: UILabel!
    @IBOutlet weak var titleCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
