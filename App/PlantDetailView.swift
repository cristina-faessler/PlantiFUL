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
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20){
                    // Plant Header
                    PlantHeaderView(plant: plant)
                    VStack(alignment: .leading, spacing: 20) {
                        // Plant name
                        Text(plant.name)
                            .font(.largeTitle)
                            .fontWeight(.thin)
                        // Description
                        Text(plant.description)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        // Plant profile
                        
                        // Subheadline
                        Text("Learn more about \(plant.name)".uppercased())
                            .fontWeight(.medium)
                            .foregroundColor(.secondary)
                            
                        // Description
                        Text(plant.care)
                            .multilineTextAlignment(.leading)
                        // Link
//                        SourceLinkView()
//                            .padding(.top, 10)
//                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(plant.name, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: plantData[4])
    }
}
