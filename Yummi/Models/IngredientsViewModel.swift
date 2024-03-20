//
//  ViewModel.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 20/03/2024.
//

import Foundation
//
//@Observable
//class IngredientsViewModel {
//        
//    static let shared = IngredientsViewModel()
//    
//    var newIngredient: String
//    
//    Section {
//        Text("Input a new ingredient: ")
//        
//        TextField(
//            "Name: ",
//            text: $newName
//        )
//        
//        TextField(
//            "Quantity: ",
//            text: $newQuantity
//        )
//        
//        
//        Picker("Category", selection: $newCategory) {
//            ForEach(Category.allCases, id:\.self) { newCategory in
//                Text(newCategory.rawValue.capitalized)
//            }
//        }
//        
//        
//        DatePicker("Expiry Date", selection: $newExpiryDate, displayedComponents: [.date])
//        
//        Picker("Unit", selection: $newUnit) {
//            ForEach(Unit.allCases, id:\.self) { newUnit in
//                Text(newUnit.rawValue)
//            }
//        }
//        
//        Button {
//            ingredients.append(Ingredient(name: newName, quantity: Double(newQuantity) ?? 0.0, category: newCategory.rawValue, expiryDate: newExpiryDate, unit: newUnit.rawValue))
//        } label: {
//            Text("Create ingredient")
//        }
//        
//    }
//    
//    
//    
//    private init() {}
//    
//    
//}
