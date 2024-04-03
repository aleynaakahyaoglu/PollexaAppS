//
//  PollsDetailsController.swift
//  Pollexa
//
//  Created by Aleyna on 1.04.2024.
//


import UIKit


class PollsDetailsController: UIViewController {
    
    @IBOutlet weak var thirdChoice: UIButton!
    @IBOutlet weak var secondChoice: UIButton!
    @IBOutlet weak var firstChoice: UIButton!
    @IBOutlet weak var questionText: UILabel!
    
    var polls: [Polls] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reloadSecondCollection()
    }

 
    func reloadSecondCollection(){
        
        var p = Polls()
        
        p.QuestionText = "How often do you spend time outdoors in nature?"
        p.firstText = "EveryDay"
        p.secondText = "Twice a week"
        p.thirdText = "Once a week"
        polls.append(p)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        firstChoice.isSelected = true
        firstChoice.backgroundColor = .systemBlue
        firstChoice.setTitle("%60", for: .normal)
        secondChoice.isSelected = false
        secondChoice.backgroundColor = .gray
        thirdChoice.isSelected = false
        thirdChoice.backgroundColor = .gray
        
    }
    @IBAction func buttonSecondTapped(_ sender: Any) {
        
        secondChoice.isSelected = true
        secondChoice.backgroundColor = .systemBlue
        secondChoice.setTitle("%90", for: .normal)
        firstChoice.isSelected = false
        firstChoice.backgroundColor = .gray
        thirdChoice.isSelected = false
        thirdChoice.backgroundColor = .gray
        
    }
    
    @IBAction func buttonThirdTapped(_ sender: Any) {
        thirdChoice.isSelected = true
        thirdChoice.backgroundColor = .systemBlue
        thirdChoice.setTitle("%100", for: .normal)
        firstChoice.isSelected = false
        firstChoice.backgroundColor = .gray
        secondChoice.isSelected = false
        secondChoice.backgroundColor = .gray
    }
}

    

    
   
