//
//  WelcomeScreenView.swift
//  FitnessAppStarter
//
//  Created by Kazi Munshimun Nabi on 12/7/25.
//

import SwiftUI

struct WelcomeScreenView: View {
    @Binding var currentStep: Int

    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to Fitness App Starter!")
                .font(.title2)
            Spacer()
            Button(action: {
                currentStep += 1
            }) {
                Text("Next")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(10)
            }
        }
        .padding()
        .transition(.opacity.combined(with: .slide))
        .animation(.easeInOut(duration: 0.3), value: currentStep)
    }
}
