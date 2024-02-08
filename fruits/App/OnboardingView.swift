//
//  OnboardingView.swift
//  fruits
//
//  Created by Ahmed Gomaa on 07/02/2024.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
   
    }
}

#Preview {
    OnboardingView()
}
