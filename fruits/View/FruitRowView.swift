//
//  FruitRowView.swift
//  fruits
//
//  Created by Ahmed Gomaa on 08/02/2024.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit: Fruit
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), 
                    startPoint: .top, 
                    endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
}
