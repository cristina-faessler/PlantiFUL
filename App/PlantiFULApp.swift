//
//  PlantiFULApp.swift
//  PlantiFUL
//
//  Created by Cristina Bolohan on 13.12.20.
//

import SwiftUI

@main
struct PlantiFULApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
