//
//  ContentView.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State var ingredients = [
        Ingredient(name: "Banana", quantity: 3.0, category: "Fruit", expiryDate: Date.distantPast, unit: "kg"),
        Ingredient(name: "Milk", quantity: 2.9, category: "Dairy", expiryDate: Date.now, unit: "L"),
        Ingredient(name: "Chicken", quantity: 1.5, category: "Meat", expiryDate: Date.now, unit: "kg"),
        Ingredient(name: "Cheese", quantity: 500, category: "Dairy", expiryDate: Date.now, unit: "g"),
        Ingredient(name: "Chocolate", quantity: 300, category: "Sweet", expiryDate: Date.now, unit: "g")]
        
    
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
     
                Section {
                    if ingredients.count > 0 {
                        Text("\(ingredients[selectedIngredient].displayIngredients())")
                        Button("Switch Ingredient", action: {
                            selectedIngredient += 1
                        })
                        .padding()
                    }
                    else {
                        Text("No ingredients. Add one")
                    }
                }
                
                Section {
                    Text("Input a new ingredient: ")
                    
                    TextField(
                        "Name: ",
                        text: $newName
                    )
                    
                    TextField(
                        "Quantity: ",
                        text: $newQuantity
                    )
                    
                    
                    Picker("Category", selection: $newCategory) {
                        ForEach(Category.allCases, id:\.self) { newCategory in
                            Text(newCategory.rawValue.capitalized)
                        }
                    }
                    
                    
                    DatePicker("Expiry Date", selection: $newExpiryDate, displayedComponents: [.date])
                    
                    Picker("Unit", selection: $newUnit) {
                        ForEach(Unit.allCases, id:\.self) { newUnit in
                            Text(newUnit.rawValue)
                        }
                    }
                    
                    Button {
                        ingredients.append(Ingredient(name: newName, quantity: Double(newQuantity) ?? 0.0, category: newCategory.rawValue, expiryDate: newExpiryDate, unit: newUnit.rawValue))
                    } label: {
                        Text("Create ingredient")
                    }
                }
                NavigationLink {
                    RecipesView(recipes: [Recipes]())
                } label: {
                    Text("See Recipes")
                }
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
