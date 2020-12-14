//
//  PlantRowView.swift
//  PlantiFUL
//
//  Created by Cristina Bolohan on 14.12.20.
//

import SwiftUI

struct PlantRowView: View {
    
    var plant: Plant
    
    var body: some View {
        
//        GeometryReader { geo in
//            ZStack {
//                       Color.offWhite
//                       RoundedRectangle(cornerRadius: 10)
//                           .fill(Color.offWhite)
//                           .frame(width: 300, height: 90, alignment: .center)
//                           .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
//                           .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
           //                .padding(.horizontal, 10)
                       HStack{

                           Image(plant.image)
                               .resizable()
                               .scaledToFill()
                               .frame(width: 80, height: 80, alignment: .center)
                               .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 4, x: 4, y: 4)
                               .cornerRadius(9)

                           VStack(alignment: .leading, spacing: 5) {
                               Text(plant.name)
                                   .font(.title3)
                                   .fontWeight(.regular)
                               Text(plant.description)
                                   .font(.caption)
                                   .foregroundColor(Color.secondary)
                                   .padding(.trailing)
                           }
//                       }
//                   }
//                   .edgesIgnoringSafeArea(.all)
        }
    }
}



struct PlantRowView_Previews: PreviewProvider {
    static var previews: some View {
        PlantRowView(plant: plantData[1])
    }
}

