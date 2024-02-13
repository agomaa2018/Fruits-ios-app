//
//  FruitDetailsHeaderView.swift
//  fruits
//
//  Created by Ahmed Gomaa on 13/02/2024.
//

import SwiftUI

struct FruitDetailsHeaderView: View {
    var fruit: Fruit
    @State private var isAnimating : Bool = false
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, 
                           startPoint: .topLeading, 
                           endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .padding(20)
                .scaleEffect(isAnimating ? 1 : 0.6 )
                
        }
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 1.0)){
                isAnimating = true
            }
        }
    }
}

#Preview {
    FruitDetailsHeaderView(fruit: fruitsData[0])
}
