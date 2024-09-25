//
//  RecipesList.swift
//  A00835550_tarea02
//
//  Created by Debanhi Medina on 25/09/24.
//

import SwiftUI

struct RecipesList: View {
    @State private var soloFavoritas = false
    
    var recetasFiltradas: [Recipe] {
        recipes.filter {
            receta in (!soloFavoritas || receta.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            List{
                Toggle(isOn: $soloFavoritas){
                    Text("Solo favoritas")
                }
                ForEach(recetasFiltradas){ recipe in
                        NavigationLink {
                            RecipesDetail(recetas: recipe)
                        } label: {
                            RecipeRow(recetas: recipe)
                        }
                }
            }
            .animation(.default, value: recetasFiltradas)
            .navigationTitle("Recetas!")
        } detail: {
            Text("Select a Recipe")
        }
    }
}

#Preview {
    RecipesList()
}

