//
//  Gift.swift
//  Xmas
//
//  Created by Khoa Pham on 12/19/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import Foundation

@objc class Gift: NSObject {
    let imageName: String
    let message: String

    init(imageName: String, message: String) {
        self.imageName = imageName
        self.message = message
    }
}