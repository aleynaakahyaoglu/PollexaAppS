//
//  SurvayCell.swift
//  Pollexa
//
//  Created by Aleyna on 2.04.2024.
//

import UIKit

class SurvayCell: UICollectionViewCell {

    @IBOutlet weak var thirdChoice: UILabel!
    @IBOutlet weak var secondChoice: UILabel!
    @IBOutlet weak var firstChoice: UILabel!
    @IBOutlet weak var QuestionText: UILabel!
    
    
    
    var survayBox: SurvayBox? {
        didSet {
            QuestionText.text = survayBox?.QuestionText[0]
            firstChoice.text = survayBox?.firstText[0]
            secondChoice.text = survayBox?.secondText[0]
            thirdChoice.text = survayBox?.thirdText[0]
            
        }
        
    }
    
    
    
        
    override func awakeFromNib() {
        super.awakeFromNib()
        
        

    
    }

}
