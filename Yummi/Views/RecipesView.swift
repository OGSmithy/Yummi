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
    @State var search: String = ""
    @State var apiMeals: [Meals] = []
    @ObservedObject var apiManager = ApiManager.shared
    
    var body: some View {
        NavigationStack {
            List {
                Text("Pick Your Recipe!")
                    .bold()
                Picker("Which recipe would you like to view?", selection: $pickedRecipe) {
                    ForEach(recipes, id:\.self) { newRecipe in
                        Text(newRecipe.name).tag(newRecipe)
                    }
                }
                Text("\(pickedRecipe.displayRecipe())")
                    .padding()
                NavigationLink {
                    RecipeDetailView(pickedRecipe: pickedRecipe)
                } label: {
                    Text("See Recipe Details")
                }
                TextField("Search For a recipe with an API!", text: $search)
                    .onSubmit {
                        apiManager.searchFor(query: search) { apiResults in
                            self.apiMeals = apiMeals
                            
                        }
                    }
                ForEach(apiMeals, id:\.strMeal) { apiMeals in
                    NavigationLink("\(apiMeals.strMeal)") {
                        ApiResultView(mealDet: [apiMeals])
                    }
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
