//
//  FructusApp.swift
//  Fructus
//
//  Created by Prathap Reddy on 19/09/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboaring: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboaring {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
