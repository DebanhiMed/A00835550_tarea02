//
//  SheetView.swift
//  A00835550_tarea02
//
//  Created by Debanhi Medina on 25/09/24.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        VStack{
            Text("Más Información")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Divider()
            Text("El Plato del Bien Comer se creó para orientar a la población mexicana hacia una alimentación balanceada, mostrándonos cuáles son los diferentes grupos de alimentos y cómo debemos combinarlos en nuestra alimentación diaria.Los alimentos están distribuidos en el Plato del Bien Comer en tres grandes grupos, según sus características y por los nutrimentos que nos aportan.")
        }
    }
}

#Preview {
    SheetView()
}
