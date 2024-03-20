//
//  RecipeDetailView.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 06/03/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @State var pickedRecipe: Recipes
    
    init(pickedRecipe: Recipes) {
        self.pickedRecipe = pickedRecipe
    }
    
    var body: some View {
        
        Text("TODO")
    }
}












struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(pickedRecipe: pickedRecipe)
    }
}
