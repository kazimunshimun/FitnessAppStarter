//
//  OnboardingSummaryView.swift
//  FitnessAppStarter
//
//  Created by Kazi Munshimun Nabi on 12/7/25.
//

import SwiftUI

struct OnboardingSummaryView: View {
    let profile: OnboardingProfile
    @AppStorage("hasCompletedOnboarding") var hasCompletedOnboarding: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Text("You're all set!")
                .font(.largeTitle)
                .transition(.scale)
            
            Text("Level: \(profile.fitnessLevel.rawValue.capitalized)")
            Text("Workout Time: \(profile.workoutTime) min")
            Text("Goals: \(profile.goals.map { $0.rawValue.capitalized }.joined(separator: ", "))")
            
            Button(action: {
                SoundManager.shared.playSuccess()
                HapticManager.shared.fire(.success)
                withAnimation {
                    hasCompletedOnboarding = true
                }
            }) {
                Text("Start Workout")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .shadow(radius: 4)
            }
            .padding(.top, 30)
        }
        .padding()
        .transition(.opacity.combined(with: .slide))
    }
}
