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
    @State var newName: String = ""
    @State var newQuantity: String = ""
    @State var newCategory: String = ""
    @State var newExpiryDate: String = ""
    @State var newUnit: String = ""

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
                
                TextField(
                    "Category: ",
                    text: $newCategory
                )
                
                TextField(
                    "Expiry Date: ",
                    text: $newExpiryDate
                )
                
                TextField(
                    "Unit: ",
                    text: $newUnit
                )
            }
            
        }
    }
}

#Preview {
    ContentView()
}
