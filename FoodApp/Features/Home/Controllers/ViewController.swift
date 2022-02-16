//
//  ViewController.swift
//  FoodApp
//
//  Created by Alberto Alegre Bravo on 21/12/21.
//

import Foundation
import UIKit
import Alamofire
import AlamofireImage
import PromiseKit


class ViewController: UIViewController {
    
    let categories = getAllCategories()
    
    private let plateRepository = PlateRepository()
    //private var plates = [Plate]()
    private var plates: Plates = []
    
    private var dataCount: Int {
        return plates.count
    }
    
    
    
    
    var categoryCell = CategoryCollectionViewCell()
    var plateCell = PlateCollectionViewCell()
    
    @IBOutlet var button: UIButton! {
        didSet {
            let _border = CAShapeLayer()
            _border.path = UIBezierPath(roundedRect: button.bounds, cornerRadius:button.frame.size.width/2).cgPath
            _border.frame = button.bounds
            _border.strokeColor = CGColor(red: 232, green: 86, blue: 99, alpha: 1)
            //_border.fillColor = CGColor(red: 0, green: 0, blue: 255, alpha: 1)
            _border.fillColor = nil
            _border.lineWidth = 12.0
            button.layer.addSublayer(_border)
                    }
    }
    @IBOutlet var pruebaImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadData()
        
        
        
    }
    
    private func loadData() {
        plates = DataManager().readJsonData()
        print(plates)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? DetailViewController,
              let plateSelected = sender as? Plate else {return}

        destinationVC.plate = plateSelected
    }
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView.tag == 1 {
            return categories.count
        } else {
            return dataCount
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView.tag == 1 {
            categoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryLabel", for: indexPath) as! CategoryCollectionViewCell
                        
            if indexPath.row < categories.count {
                let category = categories[indexPath.row]
                categoryCell.updateView(category: category)
            }
            
            return categoryCell
            
        } else {
            
            plateCell = collectionView.dequeueReusableCell(withReuseIdentifier: "plateCell", for: indexPath) as! PlateCollectionViewCell
                        
            if indexPath.row < dataCount {
                let plate = plates[indexPath.row]
                plateCell.updateViews(plate: plate)
            }
            
            return plateCell
        }
        

    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row < dataCount {
            let plate = plates[indexPath.row]
            
            performSegue(withIdentifier: segueDetail, sender: plate)
        }
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView.tag == 2 {
            return CGSize(width: 230, height: 350)
            
        }
        return CGSize(width: 0, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView.tag == 2{
            return 35
        }
        return 0
    }
}
