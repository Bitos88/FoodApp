//
//  PlateCollectionViewCell.swift
//  FoodApp
//
//  Created by Alberto Alegre Bravo on 21/12/21.
//

import UIKit

class PlateCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var image: UIImageView! {
        didSet {
            let shadow = UIBezierPath(ovalIn: CGRect(x: 50, y: 0, width: 155, height: 155)).cgPath
            
            image.layer.shadowColor = UIColor(red: 255, green: 0, blue: 0, alpha: 0.2).cgColor
            image.layer.shadowOffset = CGSize(width: 3, height: 3)
            image.layer.shadowOpacity = 1
            image.layer.masksToBounds = false
            image.layer.shadowPath = shadow
        }
    }
    
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var caloriesLabel: UILabel!
    
    
}
