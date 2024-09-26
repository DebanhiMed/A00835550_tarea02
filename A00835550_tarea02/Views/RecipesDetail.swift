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
        ScrollView {
            CircleImage(image: recetas.imagen)
                .padding(.bottom)
            
            VStack(alignment: .leading){
                Text(recetas.nombre)
                    .font(.title)
                HStack{
                    
                        Text(recetas.tipo)
                            .font(.subheadline)
                            Spacer()
                        Text(recetas.dificultad)
                            .font(.subheadline)
                    
                    Spacer()
                    Text("Porciones: \(recetas.porciones)")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                HStack{
                    Image(recetas.u1)
                        .resizable()
                        .scaledToFit()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 50)
                    Text(recetas.u1)
                        .font(.caption)
                    Divider()
                    Image(recetas.u2)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 50)
                    Text(recetas.u2)
                        .font(.caption)
                    Divider()
                    Image(recetas.u3)
                        .resizable()
                        .scaledToFit()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 50)
                    Text(recetas.u3)
                        .font(.caption)
                }
                Divider()
                Text("INGREDIENTES: ")
                    .bold()
                Text(recetas.ingredientes)
                    .padding(.bottom)
                Text("PASOS: ")
                    .bold()
                Text("Paso 1")
                    .italic()
                Text(recetas.paso1)
                    .padding(.bottom)
                Text("Paso 2")
                    .italic()
                Text(recetas.paso2)
                    .padding(.bottom)
                Text("Paso 3")
                    .italic()
                Text(recetas.paso3)
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
