//
//  ViewController.swift
//  Pollexa
//
//  Created by Aleyna on 1.04.2024.
//

import UIKit

class SplashController: UIViewController {
    
    @IBOutlet weak var splashImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animated()
        // Do any additional setup after loading the view.
    }
    
    func animated(){
        UIImageView.animate(withDuration: 6.0,
                       delay: 0.5, usingSpringWithDamping: 4.0, initialSpringVelocity: 4.0, options: .curveLinear, animations: { () -> Void in
            self.splashImageView.center = CGPoint(x:100, y:70)
        }, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            guard let controller = self.storyboard?.instantiateViewController(identifier: "splashToMain") else {return}
            self.navigationController?.pushViewController(controller, animated: true)
            
        }
        
        
    }}

