 //
//  RecipeView.swift
//  Recipe
//
//  Created by Buğra on 26.09.2022.
//

import SwiftUI

struct RecipeView: View {
    var recipe : Recipe
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                if !recipe.image.isEmpty {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }                
                
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(width: 500)
            .background(LinearGradient(
                gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30) {
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                    }
                    
                    if !recipe.ingredients.isEmpty {                        
                        VStack(alignment: .leading, spacing: 20) {
                             Text("Ingredients")
                                .font(.headline)
                            Text(recipe.ingredients)
                        }
                    }
                    
                    if !recipe.directions.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                             Text("Ingredients")
                                .font(.headline)
                            Text(recipe.directions)
                        }
                    }
                    
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width, alignment: .leading)
            }
            .padding()
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
