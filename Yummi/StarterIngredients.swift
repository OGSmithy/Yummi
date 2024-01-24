//
//  StarterIngredients.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 23/01/2024.
//

import Foundation

struct StarterIngredients {
    let ingredients = [Ingredient(name: "Banana", quantity: 3.0, category: "Fruit", expiryDate: Date.distantPast, unit: "kg"),
                       Ingredient(name: "Milk", quantity: 2.9, category: "Liquid", expiryDate: Date.distantFuture, unit: "L")]
}
