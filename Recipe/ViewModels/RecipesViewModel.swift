//
//  RecipesViewModel.swift
//  Recipe
//
//  Created by Buğra on 27.09.2022.
//

import Foundation

class RecipesViewModel : ObservableObject {
    @Published private(set) var recipes : [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe : Recipe) {
        recipes.append(recipe)
    }
}
