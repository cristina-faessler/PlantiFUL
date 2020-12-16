//
//  PlantProfileView.swift
//  PlantiFUL
//
//  Created by Cristina Bolohan on 15.12.20.
//

import SwiftUI

struct PlantProfileView: View {
    
    var plant: Plant
    let profile: [String] = ["Botanical name", "Common name", "Plant type", "Mature size", "Sun exposure", "Soil type", "Soil pH", "Bloom time", "Flower color", "Native crea", "Toxicity"]
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Plant profile"){
                ForEach(0..<profile.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack{
                        Group{
                            Image(systemName: "info.circle")
                            Text(profile[item])
                        }
                        .foregroundColor(plant.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(plant.plantProfile[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct PlantProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PlantProfileView(plant: plantData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
