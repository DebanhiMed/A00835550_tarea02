//
//  RecipeRow.swift
//  A00835550_tarea02
//
//  Created by Debanhi Medina on 25/09/24.
//
import SwiftUI

struct RecipeRow: View {
    var recetas: Recipe
    
    var body: some View {
        VStack {
            recetas.imagen
                .resizable()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
            Text(recetas.nombre)
                .font(.headline)
            
            if recetas.isFavorite {
                Image(systemName: "frying.pan.fill")
                    .foregroundStyle(Color.yellow)
            }
        }
        .padding()
    }
}

struct RecipeGridView: View {
    var recetas: [Recipe]
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 20) {
            ForEach(recetas) { receta in
                RecipeRow(recetas: receta)
            }
        }
        .padding()
    }
}

#Preview {
    Group {
        RecipeGridView(recetas: recipes)
    }
}
