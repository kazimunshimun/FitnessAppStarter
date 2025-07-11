//
//  OnboardingView.swift
//  FitnessAppStarter
//
//  Created by Kazi Munshimun Nabi on 11/7/25.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentStep = 0
    @State private var userProfile = OnboardingProfile()

    var body: some View {
        TabView(selection: $currentStep) {
            WelcomeScreenView(currentStep: $currentStep)
                .tag(0)
            FitnessLevelSelectionView(profile: $userProfile, currentStep: $currentStep)
                .tag(1)
            TimeAvailabilityView(profile: $userProfile, currentStep: $currentStep)
                .tag(2)
            GoalSelectionView(profile: $userProfile, currentStep: $currentStep)
                .tag(3)
            OnboardingSummaryView(profile: userProfile)
                .tag(4)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .animation(.easeInOut, value: currentStep)
    }
}
