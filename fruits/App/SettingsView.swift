//
//  SettingsView.swift
//  fruits
//
//  Created by Ahmed Gomaa on 13/02/2024.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("onboarding") var isOnboarding : Bool = true 
    
    var body: some View {
     
        NavigationView { 
            ScrollView (.vertical, showsIndicators: false){
                VStack (spacing: 20) {
                    GroupBox(
                        label: 
                            SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4 )
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                  
                    }
                   
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(Color.green)
                            }
                            else {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "iphone")
                    ) { 
                        
                            SettingsListRow(name: "Developer", content: "John / Jane")
                            SettingsListRow(name: "Designer", content: "Robert Petras")
                            SettingsListRow(name: "Compatibility", content: "iOS 14")
                            SettingsListRow(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                            SettingsListRow(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                            SettingsListRow(name: "SwiftUI", content: "2.0")
                            SettingsListRow(name: "Version", content: "1.1.0")
                        
                    }
                }
                .navigationBarTitle(Text("Settings") , displayMode: .large)
                .navigationBarItems(
                    trailing: 
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, 
                        label: {
                            Image(systemName: "xmark")
                        })
                )
                .padding()
            }
            
        }
        
    }
}

#Preview {
    SettingsView()
}
