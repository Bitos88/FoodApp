//
//  FoodCategory.swift
//  FoodApp
//
//  Created by Alberto Alegre Bravo on 21/12/21.
//

import Foundation

enum FoodCategory: String {
    
    case ALL = "All"
    case ITALIAN = "Italian"
    case ASIAN = "Asian"
    case CHINESSE = "Chinesse"
    case JAPANESE = "Japanese"
    case SPANISH = "Spanish"
    case VEGAN = "Vegan"
    
}

func getAllCategories() -> [FoodCategory] {
        
    return [FoodCategory.ALL, FoodCategory.ASIAN, FoodCategory.ITALIAN, FoodCategory.CHINESSE, FoodCategory.JAPANESE, FoodCategory.SPANISH, FoodCategory.VEGAN]
}

