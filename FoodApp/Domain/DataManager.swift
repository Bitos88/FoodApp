//
//  DataManager.swift
//  FoodApp
//
//  Created by Alberto Alegre Bravo on 27/12/21.
//

import Foundation

class DataManager {
    
    func readJsonData() -> [Plate]{
        if let path = Bundle.main.path(forResource: "appfoodjson", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let decoder = JSONDecoder()
                do {
                    return try decoder.decode([Plate].self, from: data)
                } catch {
                    print(error)
                    return []
                }
            } catch {
                print(error)
                return []
            }
        } else {
            return []
        }
    }
    
}
