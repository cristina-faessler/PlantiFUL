//
//  PlantCardView.swift
//  PlantiFUL
//
//  Created by Cristina Bolohan on 13.12.20.
//

import SwiftUI

struct PlantCardView: View {
    
    var plant: Plant
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                
                Image(plant.image)
                    .resizable()
                    .scaledToFill()
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                LinearGradient(gradient: Gradient(colors: plant.gradientColors), startPoint: .top, endPoint: .bottom)
    
                VStack(spacing: 20) {
                    Spacer()
                    Text(plant.name)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.regular)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.30), radius: 4, x: 4, y: 4)
                    Text(plant.description)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 16)
                        .frame(maxWidth: 380)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.30), radius: 4, x: 4, y: 4)

                    StartButtonView()
                }
                .padding(.bottom, 60)
                
            }
            .onAppear{
                withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .cornerRadius(20)
            .padding(.horizontal, 20)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        }
    }
}

struct PlantCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlantCardView(plant: plantData[2])
    }
}

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}
