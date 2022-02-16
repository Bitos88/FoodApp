//
//  DetailViewController.swift
//  FoodApp
//
//  Created by Alberto Alegre Bravo on 22/12/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet var detailImage: UIImageView!
    @IBOutlet var detailTitle: UILabel!
    @IBOutlet var detailSubtitle: UILabel!
    @IBOutlet var detailPrice: UILabel!
    @IBOutlet var detailDesc: UILabel!
    
    var plate: Plate?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        detailDesc.font = UIFontMetrics.default.scaledFont(for: AppDelegate.application.)
//        detailDesc.adjustsFontForContentSizeCategory = true
        
        
        detailTitle.text = plate?.title
        detailSubtitle.text = plate?.subtitle
        detailDesc.text = plate?.description
        //detailImage.image = plate?.image
        detailPrice.text = plate?.price
        
        

    }

}
