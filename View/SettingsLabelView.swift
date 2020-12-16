//
//  SettingsLabelView.swift
//  PlantiFUL
//
//  Created by Cristina Bolohan on 16.12.20.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "PlantiFUL", labelImage: "info.circle")
    }
}
