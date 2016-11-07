//
//  QuizFrontTableViewCell.swift
//  iQuiz
//
//  Created by Brian Ross on 11/6/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import UIKit

class QuizFrontTableViewCell: UITableViewCell {

    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var descrCell: UILabel!
    @IBOutlet weak var imgCell: UIImageView!
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
