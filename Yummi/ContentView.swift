//
//  ContentView.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    let starterIngredients = StarterIngredients()
    
    var body: some View {
        Text(Ingredients.displayIngredients())
            
    }
}

#Preview {
    ContentView()
}
