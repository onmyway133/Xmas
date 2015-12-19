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
        "image1.png",
        "image2.png",
        "image3.png",
        "image4.png",
        "image5.png",
        "image6.png",
        "image7.png",
        "image8.png", 
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
        "Have a nice day",
        "Smile 😄"
    ]

    class func makeGift() -> Gift {
        let imageNameIndex = Int(arc4random_uniform(UInt32(imageNames.count)))
        let messageIndex = Int(arc4random_uniform(UInt32(messages.count)))

        let imageName = imageNames[imageNameIndex]
        let message = messages[messageIndex]

        return Gift(imageName: imageName, message: message)
    }
}