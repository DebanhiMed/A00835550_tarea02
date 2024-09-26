//
//  ContentView.swift
//  A00835550_tarea02
//
//  Created by Debanhi Medina on 25/09/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack{
            TabView(){
                RecipesList()
                    .tabItem { Label("Recipes", systemImage: "list.dash") .font(.title)}
                PlateView()
                    .tabItem { Label("Plate", systemImage: "cursorarrow.click.2") .font(.title)}
                
            }
        }
    }
}

#Preview {
    ContentView()
}
