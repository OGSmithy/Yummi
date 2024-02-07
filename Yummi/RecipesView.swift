//
//  RecipesView.swift
//  Yummi
//
//  Created by Smith, Oli (AMM) on 07/02/2024.
//

import SwiftUI

struct RecipesView: View {
    
    //@State var pickedRecipe =
    
    enum theRecipes: String, CaseIterable {
        for i in 0..< examples.count {
        case i(name)
        }
    }
    
    var body: some View {
        Form {
            Section {
                Text("Which recipe would you like to view?")
                    .bold()
                Picker("Which recipe would you like to view?",selection: $pickedRecipe) {
                    ForEach(examples[0], id:\.self) { newRecipe in
                        
                    }
                }
            }
        }
    }
}

#Preview {
    RecipesView()
}
