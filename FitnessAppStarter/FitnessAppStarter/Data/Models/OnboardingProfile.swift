//
//  OnboardingProfile.swift
//  FitnessAppStarter
//
//  Created by Kazi Munshimun Nabi on 12/7/25.
//

struct OnboardingProfile {
    var fitnessLevel: FitnessLevel = .beginner
    var workoutTime: Int = 15
    var goals: [FitnessGoal] = []
}

enum FitnessLevel: String, CaseIterable, Codable {
    case beginner, intermediate, advanced
}

enum FitnessGoal: String, CaseIterable, Codable, Identifiable {
    case mobility, core, strength, endurance
    var id: String { self.rawValue }
}
