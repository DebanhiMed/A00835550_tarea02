//
//  Recipe.swift
//  A00835550_tarea02
//
//  Created by Debanhi Medina on 25/09/24.
//

import Foundation
import SwiftUI

struct Recipe: Hashable, Codable, Identifiable {
    var id: Int
    var nombre: String
    var ingredientes: String
    var tipo: String
    var dificultad: String
    var porciones: String
    var paso1: String
    var paso2: String
    var paso3: String
    var u1: String
    var u2: String
    var u3: String
    var isFavorite: Bool
    
    private var imagenNombre: String
    var imagen: Image {
        Image(imagenNombre)
    }
    
    
}
