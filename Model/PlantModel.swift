//
//  PlantModel.swift
//  PlantiFUL
//
//  Created by Cristina Bolohan on 13.12.20.
//

import SwiftUI

struct Plant: Identifiable {
    
    var id = UUID()
    var name: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var plantProfile: [String]
    var care: String
}
