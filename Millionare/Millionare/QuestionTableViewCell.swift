//
//  QuestionTableViewCell.swift
//  Millionare
//
//  Created by Ованес Захарян on 23.03.2022.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {


    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerOneLabel: UILabel!
    @IBOutlet var answerTwoLabel: UILabel!
    @IBOutlet var answerThreeLabel: UILabel!
    @IBOutlet var answerFourLabel: UILabel!
    
    
    func configure(with question: Question) {
       
        questionLabel.text = String(describing: question.question)
       
        
    }

}
