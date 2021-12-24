//
//  Plate.swift
//  FoodApp
//
//  Created by Alberto Alegre Bravo on 22/12/21.
//

import Foundation
import UIKit

typealias Plates = [Plate]

struct Plate {
    
    let image: String
    let title: String
    let subtitle: String
    let description: String
    let price: String
    let category: FoodCategory

}
