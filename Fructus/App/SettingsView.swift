//
//  SettingsView.swift
//  Fructus
//
//  Created by Prathap Reddy on 19/09/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories.None have cholesterol. Fruits are sources of many essential nutritients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Prathap / Reddy")
                        SettingsRowView(name: "Designer", content: "Prathap / Reddy")
                        SettingsRowView(name: "Compatibility", content: "iOS 16")
                        SettingsRowView(name: "Website", linkLable: "SwiftUI Masterclass", linkDestination: "swiftmasterclass.com")
                        SettingsRowView(name: "Twitter", linkLable: "@Prathap1712", linkDestination: "twitter.com/prathap1712")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                                        
                )
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}

// MARK: - PREIVEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().preferredColorScheme(.dark)
    }
}
