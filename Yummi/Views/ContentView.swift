//
//  ContentView.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    
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
