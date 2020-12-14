//
//  PlantDetailView.swift
//  PlantiFUL
//
//  Created by Cristina Bolohan on 14.12.20.
//

import SwiftUI

struct PlantDetailView: View {
    
    var plant: Plant
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: plantData[0])
    }
}
