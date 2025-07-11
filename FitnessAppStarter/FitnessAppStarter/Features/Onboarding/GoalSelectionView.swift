//
//  GoalSelectionView.swift
//  FitnessAppStarter
//
//  Created by Kazi Munshimun Nabi on 12/7/25.
//

import SwiftUI

struct GoalSelectionView: View {
    @Binding var profile: OnboardingProfile
    @Binding var currentStep: Int

    @State private var selectedGoals: Set<FitnessGoal> = []

    var body: some View {
        VStack(spacing: 20) {
            Text("What are your goals?")
                .font(.title2)

            ForEach(FitnessGoal.allCases) { goal in
                Toggle(goal.rawValue.capitalized, isOn: Binding(
                    get: { selectedGoals.contains(goal) },
                    set: { isSelected in
                        if isSelected { selectedGoals.insert(goal) }
                        else { selectedGoals.remove(goal) }
                    }
                ))
                .toggleStyle(SwitchToggleStyle(tint: .blue))
            }

            Button("Continue") {
                profile.goals = Array(selectedGoals)
                currentStep += 1
            }
            .padding()
            .disabled(selectedGoals.isEmpty)
        }
        .padding()
        .transition(.opacity.combined(with: .slide))
        .animation(.easeInOut(duration: 0.3), value: currentStep)
    }
}
