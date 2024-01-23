//
//  Ingredients.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 23/01/2024.
//

import Foundation

struct Ingredient {
    let name: String
    var quantity: Double
    let category: String
    var expiryDate: String
    
    
    func displayIngredients() -> String {
        return """
        Name: \(name)
        Quantity: \(quantity) units
        Category: \(category)
        Expiry Date: \(expiryDate)
        """
    }
}
