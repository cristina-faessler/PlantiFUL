//
//  OnboardingView.swift
//  PlantiFUL
//
//  Created by Cristina Bolohan on 13.12.20.
//

import SwiftUI
struct OnboardingView: View {
    
    var plants: [Plant] = plantData
    
    var body: some View {
        TabView{
            ForEach(plants[0...5]) { item in
                PlantCardView(plant: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(plants: plantData)
    }
}
