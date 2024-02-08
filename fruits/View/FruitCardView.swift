//
//  FruitCardView.swift
//  fruits
//
//  Created by Ahmed Gomaa on 06/02/2024.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimated : Bool = false

    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 20){
                // FRUITS: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 10)
                    .scaleEffect(isAnimated ? 1.0 : 0.0 )
                // FRUIT: TITLE
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                // FRUIT: HEADLINE
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5) ){
                isAnimated = true
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), 
                                   startPoint: .topLeading, 
                                   endPoint: .trailing))
        .cornerRadius(20)
        .padding(.horizontal, 20 )
    }
    
}

#Preview {
    FruitCardView(fruit: fruitsData[1])
        .previewLayout(.fixed(width: 320, height: 640))
}
