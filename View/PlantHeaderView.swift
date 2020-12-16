//
//  PlantHeaderView.swift
//  PlantiFUL
//
//  Created by Cristina Bolohan on 14.12.20.
//

import SwiftUI

struct PlantHeaderView: View {
    
    var plant: Plant
    @State private var isAnimatingImage: Bool = false
    
    var body: some View {
        VStack {
            Image(plant.image)
                .resizable()
                .scaledToFill()
                .frame(height: 420)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
                .onAppear() {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimatingImage = true
                }
            }
        }
        .padding(.bottom, 40)
    }
}

struct PlantHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PlantHeaderView(plant: plantData[4])
        //            .previewLayout(.fixed(width: 375, height: 440))
    }
}
