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
    var expiryDate: Date
    let unit: String
    
    
    func displayIngredients() -> String {
        return """
        Name: \(name)
        Quantity: \(quantity) \(unit)
        Category: \(category)
        Expiry Date: \(expiryDate)
        """
    }
    
    #if DEBUG

    static var examples = [
        Recipies(name: "Mac n' Cheese", ingredients: [Ingredient], isFavorite: true, rating: 10)
    ]



    #endif

}
