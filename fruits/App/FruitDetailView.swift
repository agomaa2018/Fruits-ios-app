//
//  FruitDetailView.swift
//  fruits
//
//  Created by Ahmed Gomaa on 13/02/2024.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit : Fruit
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (alignment: .center, spacing: 20){
                    FruitDetailsHeaderView(fruit: fruit)
                        
                        
                    VStack (alignment: .leading, spacing: 20) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        SourceLinkView()
                            .padding(.top, 20)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640)
                }
            }
                .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
