//
//  SettingsListRow.swift
//  fruits
//
//  Created by Ahmed Gomaa on 13/02/2024.
//

import SwiftUI

struct SettingsListRow: View {
    var name: String
    var content: String? = nil // it is maybe empty
    var linkLabel: String? = nil 
    var linkDestination: String? = nil
    
    
    var body: some View {
        VStack{
            Divider().padding(.vertical, 4 )
            HStack {
                Text(name).foregroundStyle(Color.gray)
                Spacer()
                
                if content != nil {
                    Text(content! )
                }
                else if linkLabel != nil && linkDestination != nil {
                    Link(destination: URL(string: "https://\(linkDestination!)")!, label: {
                        Text(linkLabel!)
                        Image(systemName: "arrow.up.right.square")
                            .foregroundColor(.pink)
                    })
                }
                else {
                    EmptyView()
                }
                
                
            }
        }
        
    }
}

#Preview {
    SettingsListRow(name: "Developer", content: "Ahmed")
        .padding()
}
