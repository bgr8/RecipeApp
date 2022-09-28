//
//  HomeView.swift
//  Recipe
//
//  Created by Buğra on 26.09.2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM : RecipesViewModel    
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipesVM.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
