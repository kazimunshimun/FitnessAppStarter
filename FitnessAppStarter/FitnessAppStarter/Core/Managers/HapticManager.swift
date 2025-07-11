//
//  HapticManager.swift
//  FitnessAppStarter
//
//  Created by Kazi Munshimun Nabi on 12/7/25.
//

import UIKit

enum HapticType {
    case success, warning, error, light

    var feedback: UINotificationFeedbackGenerator.FeedbackType {
        switch self {
        case .success: return .success
        case .warning: return .warning
        case .error: return .error
        case .light: return .success
        }
    }
}

class HapticManager {
    static let shared = HapticManager()

    func fire(_ type: HapticType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type.feedback)
    }
}
