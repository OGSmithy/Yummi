//
//  ContentView.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State var starterIngredients = StarterIngredients()
    @State var selectedIngredient: Int = 0 {
        didSet {
            if selectedIngredient >= starterIngredients.ingredients.count {
                selectedIngredient = 0
            }
        }
    }
    @State var newName: String = String()
    @State var newQuantity: String = String()
    @State var newCategory: String = String()
    @State var newExpiryDate: String = ""
    @State var newUnit: String = String()
    enum Category: String, CaseIterable, Identifiable {
        case fruit, liquid, carbohydrates
        var id: Self { self }
    }
    
    
    @State private var myIngredients = [Ingredient]()
    @State private var newIngredient = []
    
    var body: some View {
        Form {
            VStack {
                Text("\(starterIngredients.ingredients[selectedIngredient].displayIngredients())")
                Button("Switch Ingredient", action: {
                    selectedIngredient += 1
                })
                .padding()
                
                Text("Input a new ingredient: ")

                TextField(
                    "Name: ",
                    text: $newName
                )
                
                
                TextField(
                    "Quantity: ",
                    text: $newQuantity
                )
                newIngredient.append(newQuantity)
                
                Picker("Category", selection: $newCategory) {
                    Text("Fruit").tag(Category.fruit)
                    Text("Liquid").tag(Category.liquid)
                    Text("Carbs").tag(Category.carbohydrates)
                }
                
                TextField(
                    "Expiry Date: ",
                    text: $newExpiryDate
                )
                newIngredient.append(newExpiryDate)
                
                TextField(
                    "Unit: ",
                    text: $newUnit
                )
                newIngredient.append(newUnit)
                
                Button("Create new ingredient", action: {
                    myIngredients.append(newIngredient)
                })
            }
            
        }
    }
}

#Preview {
    ContentView()
}
