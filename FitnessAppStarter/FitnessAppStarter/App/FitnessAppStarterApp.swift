//
//  FitnessAppStarterApp.swift
//  FitnessAppStarter
//
//  Created by Kazi Munshimun Nabi on 11/7/25.
//

import SwiftUI

@main
struct FitnessAppStarterApp: App {
    @AppStorage("hasCompletedOnboarding") var hasCompletedOnboarding: Bool = false
    var body: some Scene {
        WindowGroup {
            if hasCompletedOnboarding {
                HomeView()
            } else {
                OnboardingView()
            }
        }
    }
}
