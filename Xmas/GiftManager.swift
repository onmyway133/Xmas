//
//  GiftManager.swift
//  Xmas
//
//  Created by Khoa Pham on 12/19/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import Foundation

@objc class GiftManager: NSObject {
    static let imageNames = [
        "IDEAlertBezel_Generic_Rayrolling.pdf",
        "Christmas-Gifts-icon.png",
        "christmas_stocking.png",
    ]

    static let messages = [
        "Merry Christmas",
        "🎄🎋🎁",
        "🎐🎵🎸🍺",
        "🎄🎅🎄",
        "Let it go",
        "⛄️❄️",
        "Joy and cheer",
        "Xmas",
        "🎉🎉🎉",
        "Santa is coming",
        "A Christmas wish",
    ]

    class func makeGift() -> Gift {
        let imageNameIndex = Int(arc4random_uniform(UInt32(imageNames.count)))
        let messageIndex = Int(arc4random_uniform(UInt32(messages.count)))

        let imageName = imageNames[imageNameIndex]
        let message = messages[messageIndex]

        return Gift(imageName: imageName, message: message)
    }
}