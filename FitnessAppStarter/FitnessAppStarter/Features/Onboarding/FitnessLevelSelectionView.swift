//
//  FitnessLevelSelectionView.swift
//  FitnessAppStarter
//
//  Created by Kazi Munshimun Nabi on 12/7/25.
//

import SwiftUI

struct FitnessLevelSelectionView: View {
    @Binding var profile: OnboardingProfile
    @Binding var currentStep: Int

    var body: some View {
        VStack(spacing: 20) {
            Text("What's your current fitness level?")
                .font(.title2)
            ForEach(FitnessLevel.allCases, id: \.self) { level in
                Button(action: {
                    profile.fitnessLevel = level
                    currentStep += 1
                }) {
                    Text(level.rawValue.capitalized)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(10)
                }
            }
        }
        .padding()
        .transition(.opacity.combined(with: .slide))
        .animation(.easeInOut(duration: 0.3), value: currentStep)
    }
}
