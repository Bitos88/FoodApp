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
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        priceLabel.text = nil
        image.image = nil
        descriptionLabel.text = nil
        titleLabel.text = nil
        subtitleLabel.text = nil
        caloriesLabel.text = nil
        
    }
    
    func updateViews(plate: Plate) {
        update(image: plate.image)
        update(price: plate.price)
        update(title: plate.title)
        update(subtitle: plate.subtitle)
        update(calories: plate.calories)
        update(description: plate.description)
        
        
    }
    
    private func update(price: String) {
        priceLabel.text = price
    }
    private func update(image: String?) {
        self.image.image = UIImage(named: image ?? "")
    }
    private func update(description: String) {
        descriptionLabel.text = description
    }
    private func update(title: String) {
        titleLabel.text = title
    }
    private func update(subtitle: String) {
        subtitleLabel.text = subtitle
    }
    private func update(calories: Double) {
        caloriesLabel.text = "\(calories)"
    }
    
}
