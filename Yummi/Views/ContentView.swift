//
//  ContentView.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State var ingredients = [
        Ingredient(name: "Banana", quantity: 3.0, category: "Fruit", expiryDate: Date(timeIntervalSince1970: 1000000000), unit: "kg"),
        Ingredient(name: "Milk", quantity: 2.9, category: "Dairy", expiryDate: Date.now, unit: "L"),
        Ingredient(name: "Chicken", quantity: 1.5, category: "Meat", expiryDate: Date(timeIntervalSinceNow: 100000), unit: "kg"),
        Ingredient(name: "Cheese", quantity: 500, category: "Dairy", expiryDate: Date(timeIntervalSinceNow: 10000), unit: "g"),
        Ingredient(name: "Chocolate", quantity: 300, category: "Sweet", expiryDate: Date(timeIntervalSinceNow: 10000000), unit: "g")]
        
    
    @State var selectedIngredient: Int = 0 {
        didSet {
            if selectedIngredient >= ingredients.count {
                selectedIngredient = 0
            }
        }
    }
        
    @State private var newName: String = String()
    @State private var newQuantity: String = String()
    @State private var newCategory: Category = .fruit
    @State private var newExpiryDate: Date = .now
    @State private var newUnit: Unit = .kg
   
    enum Category: String, CaseIterable {
        case fruit, carbohydrates, meat, dairy, sweet
    }
    enum Unit: String, CaseIterable {
        case kg, g, ml, L
    }
    

    var body: some View {
        NavigationStack {
            Form {
                Text("Welcome To Yummi!")
                    .padding()
                    .foregroundColor(.green)
                    .bold()
                    .font(.custom("AmericanTypewriter", fixedSize: 27))
                
                NavigationLink {
                    IngredientsView()
                } label: {
                    Text("See and Add Ingredients")
                        .bold()
                        .padding()
                }
                NavigationLink {
                    RecipesView(recipes: Recipes.examples)
                } label: {
                    Text("See Recipes")
                        .bold()
                        .padding()
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
