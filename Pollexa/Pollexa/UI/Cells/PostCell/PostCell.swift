//
//  PostCell.swift
//  Pollexa
//
//  Created by Aleyna on 1.04.2024.
//

import UIKit

class PostCell: UICollectionViewCell {

    @IBOutlet weak var secondFavButton: UIButton!
    @IBOutlet weak var firstFavButton: UIButton!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var userIcon: UIImageView!
    @IBOutlet weak var userName: UILabel!
    
    
    var isLiked = false
    
    var survay: Survay? {
        didSet{
            
            userName.text = survay?.title[0]
            firstImage.image = UIImage(named: "CampImage")
            secondImage.image = UIImage(named: "AutumnImage")
        }
        
    }
    
    @objc func favButtonTapped() {
        
        isLiked.toggle()
        
        let imageName = isLiked ? "hand.thumbsup.fill" : "hand.thumbsup"
        firstFavButton.setImage(UIImage(systemName: imageName), for: .normal)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        firstFavButton.addTarget(self, action: #selector(favButtonTapped), for: .touchUpInside)
    }

}
