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
        HStack{
            recetas.imagen
                .resizable()
                .frame(width: 50, height: 50)
            Text(recetas.nombre)
            
            Spacer()
            
            if recetas.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundStyle(Color.yellow)
            }
        }
    }
}

#Preview {
    Group {
            RecipeRow(recetas: recipes[0])
            RecipeRow(recetas: recipes[1])
        }
}
