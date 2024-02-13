//
//  SettingsLabelView.swift
//  fruits
//
//  Created by Ahmed Gomaa on 13/02/2024.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String 
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName:labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
}
