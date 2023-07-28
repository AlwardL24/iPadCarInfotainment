//
//  AppleMusicAPI.swift
//  iPadCarInfotainment
//
//  Created by Aydan H on 28/07/23.
//
import StoreKit
import SwiftyJSON

class AppleMusicAPI {
    let developerToken = "YOUR DEVELOPER TOKEN FROM PART 1"
    
    func getUserToken() -> String {
        var userToken = String()
     
        // 1
        let lock = DispatchSemaphore(value: 0)
     
        // 2
        SKCloudServiceController().requestUserToken(forDeveloperToken: developerToken) { (receivedToken, error) in
            // 3
            guard error == nil else { return }
            if let token = receivedToken {
                userToken = token
                lock.signal()
            }
        }
     
        // 4
        lock.wait()
        return userToken
    }
    func getStorefrontID() -> String {
        var storefrontID = String()
     
        // 1
        let lock = DispatchSemaphore(value: 0)
     
        // 2
        SKCloudServiceController().requestStorefrontIdentifier { (receivedStorefrontID, error) in
            // 3
            guard error == nil else { return }
            if let id = receivedStorefrontID {
                storefrontID = id
                lock.signal()
            }
        }
     
        // 4
        lock.wait()
        return storefrontID
    }
}




