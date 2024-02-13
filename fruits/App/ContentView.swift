//
//  ContentView.swift
//  fruits
//
//  Created by Ahmed Gomaa on 04/02/2024.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView()
}
