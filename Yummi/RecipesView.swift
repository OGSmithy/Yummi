//
//  RecipesView.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 07/02/2024.
//

import SwiftUI

struct RecipesView: View {
    
    @State var recipes: [Recipes]
    @State var pickedRecipe: Recipes = Recipes.examples[0]
    
    
    var body: some View {
        Form {
            Section {
                VStack {
                    Text("Pick Your Recipe!")
                        .bold()
                    Picker("Which recipe would you like to view?", selection: $pickedRecipe) {
                        ForEach(recipes, id:\.self) { newRecipe in
                            Text(newRecipe.name).tag(newRecipe)

                        }
                    }
                    Text("\(pickedRecipe.displayRecipe())")
                }
            }
        }
    }
}


struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView(recipes: Recipes.examples)
    }
}
