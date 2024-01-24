//
//  ContentView.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State var starterIngredients = StarterIngredients()
    @State var selectedIngredient: Int = 0
    
    var body: some View {
        VStack {
            Text("\(starterIngredients.ingredients[selectedIngredient].displayIngredients())")
            Button("Switch Ingredient", action: {
                selectedIngredient += 1
            })
            
        }
       
    }
}

#Preview {
    ContentView()
}
