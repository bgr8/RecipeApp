//
//  RecipeApp.swift
//  Recipe
//
//  Created by Buğra on 26.09.2022.
//

import SwiftUI

@main
struct RecipeApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
