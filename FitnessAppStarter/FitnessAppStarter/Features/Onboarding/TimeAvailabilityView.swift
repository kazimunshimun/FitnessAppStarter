//
//  TimeAvailabilityView.swift
//  FitnessAppStarter
//
//  Created by Kazi Munshimun Nabi on 12/7/25.
//

import SwiftUI

struct TimeAvailabilityView: View {
    @Binding var profile: OnboardingProfile
    @Binding var currentStep: Int
    let timeOptions = [10, 15, 20, 30]

    var body: some View {
        VStack(spacing: 20) {
            Text("How much time do you have daily?")
                .font(.title2)
            ForEach(timeOptions, id: \.self) { time in
                Button(action: {
                    profile.workoutTime = time
                    currentStep += 1
                }) {
                    Text("\(time) minutes")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green.opacity(0.2))
                        .cornerRadius(10)
                }
            }
        }
        .padding()
        .transition(.opacity.combined(with: .slide))
        .animation(.easeInOut(duration: 0.3), value: currentStep)
    }
}
