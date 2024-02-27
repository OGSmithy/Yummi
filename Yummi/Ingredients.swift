//
//  Ingredients.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 23/01/2024.
//

import Foundation

struct Ingredient: Hashable {
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

}

struct Recipes: Hashable {
    let name: String
    let ingredients: [Ingredient]
    let isFavorite: Bool
    let rating: Int
  
    #if DEBUG

    static var examples = [
        Recipes(name: "Mac n' Cheese", ingredients: [Ingredient(name: "Cheese", quantity: 500, category: "Dairy", expiryDate: Date.now, unit: "g"), Ingredient(name: "Milk", quantity: 2.9, category: "Dairy", expiryDate: Date.now, unit: "L")], isFavorite: true, rating: 10),
        Recipes(name: "Milkshake", ingredients: [Ingredient](), isFavorite: false, rating: 2),
        Recipes(name: "Fajitas", ingredients: [Ingredient](), isFavorite: false, rating: 8)]

    #endif
    
    func displayRecipe() -> String {
        return """
        Recipe: \(name)
        Ingredients Needed: \(ingredients)
        Favorite Meal: \(isFavorite)
        Rating (/10): \(rating)
        """
    }
}
