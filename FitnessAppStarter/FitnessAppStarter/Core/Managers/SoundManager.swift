//
//  SoundManager.swift
//  FitnessAppStarter
//
//  Created by Kazi Munshimun Nabi on 12/7/25.
//

import AVFoundation

class SoundManager {
    static let shared = SoundManager()
    var player: AVAudioPlayer?

    func playSuccess() {
        playSound(named: "success_chime") // ensure file is in Assets.xcassets or Resources folder
    }

    private func playSound(named name: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("Failed to play sound: \(error.localizedDescription)")
        }
    }
}
