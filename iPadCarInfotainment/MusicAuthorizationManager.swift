//
//  MusicAuthorizationManager.swift
//  iPadCarInfotainment
//
//  Created by Aydan Hawken on 28/07/23.
//

import Foundation
import MusicKit
import MusadoraKit

class MusicAuthorizationManager: NSObject {
     var isAuthorizedForMusicKit = false
    var musicKitError: MusicAuthorization.Status?

    func requestMusicAuthorization() async {
        let status = await MusicAuthorization.request()

        switch status {
        case .authorized:
            isAuthorizedForMusicKit = true
        case .restricted:
            musicKitError = .restricted
        case .notDetermined:
            musicKitError = .notDetermined
        case .denied:
            musicKitError = .denied
        @unknown default:
            musicKitError = .notDetermined
        }
    }
}
