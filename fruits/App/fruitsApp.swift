//
//  fruitsApp.swift
//  fruits
//
//  Created by Ahmed Gomaa on 04/02/2024.
//

import SwiftUI

@main
struct fruitsApp: App {
    @AppStorage("onboarding") var isOnboarding : Bool = true 
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }
            else {
                ContentView()
            }
            
        }
    }
}
