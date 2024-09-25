//
//  RecipesDetail.swift
//  A00835550_tarea02
//
//  Created by Debanhi Medina on 25/09/24.
//

import SwiftUI

struct RecipesDetail: View {
    var recetas: Recipe
    
    var body: some View {
        VStack {
            CircleImage(image: recetas.imagen)
                .offset(y: -60)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text(recetas.nombre)
                    .font(.title)
                HStack{
                    VStack{
                        Text(recetas.tipo)
                            .font(.subheadline)
                        Text(recetas.dificultad)
                            .font(.subheadline)
                    }
                    Spacer()
                    Text("Porciones: \(recetas.porciones)")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("Receta")
                    .font(.title2)
                    .padding(.bottom)
                Text("INGREDIENTES: ")
                    .bold()
                Text(recetas.ingredientes)
                    .padding(.bottom)
                Text("PASOS: ")
                    .bold()
                Text(recetas.pasos)
            }
            .padding()
        }
        .navigationTitle(recetas.nombre)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RecipesDetail(recetas: recipes[0])
}
