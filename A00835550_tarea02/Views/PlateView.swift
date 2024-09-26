//
//  SheetView.swift
//  A00835550_tarea02
//
//  Created by Debanhi Medina on 25/09/24.
//

import SwiftUI

struct PlateView: View {
    
    @State private var showMore = false
    
    var body: some View {
        VStack{
            Text("Plato del Buen Comer")
                .bold()
                .font(.title)
                .padding()
            Image("plato")
                .resizable()
                .scaledToFit()
            
            Button("Ver más"){
                showMore.toggle()
            }
            .sheet(isPresented: $showMore, content: {
                SheetView()
            })
        }
    }
}

#Preview {
    PlateView()
}
