//
//  StartButtonView.swift
//  fruits
//
//  Created by Ahmed Gomaa on 06/02/2024.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("onboarding") var isOnboarding : Bool = true 
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
           isOnboarding = false
        }) {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
            
        }
        .accentColor(Color.white)
    }
}

#Preview {
    StartButtonView()
}
