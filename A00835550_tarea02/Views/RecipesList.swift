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
        recipes.filter { receta in
            !soloFavoritas || receta.isFavorite
        }
    }

    var body: some View {
        NavigationSplitView {
            VStack {
                Toggle(isOn: $soloFavoritas) {
                    Text("Especialidades")
                }
                .padding()

                let columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)

                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(recetasFiltradas) { recipe in
                        NavigationLink {
                            RecipesDetail(recetas: recipe)
                        } label: {
                            RecipeRow(recetas: recipe)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Deb's Kitchen!")
            .animation(.default, value: recetasFiltradas)
        } detail: {
            Text("Select a Recipe")
        }
    }
}

#Preview {
    RecipesList()
}
