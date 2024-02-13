//
//  FruitNutrientsView.swift
//  fruits
//
//  Created by Ahmed Gomaa on 13/02/2024.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy",  "Sugar",  "Fat",  "Protein",  "Vitamin",  "Minerals"]
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value") {
                ForEach(0..<nutrients.count, id:\.self ) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }                        
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                     
                        Spacer(minLength: 30)
                        Text(fruit.nutrition[item])
                            .font(.title2)
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }

    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 480))
}
