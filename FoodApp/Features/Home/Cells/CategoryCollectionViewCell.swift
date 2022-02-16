//
//  CategoryCollectionViewCell.swift
//  FoodApp
//
//  Created by Alberto Alegre Bravo on 21/12/21.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var textLabel: UILabel!
    
    //MARK: LifeCycle
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        textLabel.text = nil
    }
    
    //MARK: Public Function
    
    func updateView(category: FoodCategory) {
        update(categoryName: category.rawValue)
    }
    
    //MARK: Private Function
    
    private func update(categoryName: String) {
        textLabel.text = categoryName
    }
    
}

