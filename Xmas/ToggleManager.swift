//
//  ToggleManager.swift
//  Xmas
//
//  Created by Khoa Pham on 12/19/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import AppKit

@objc class ToggleManager: NSObject {
    static let key = "com.fantageek.Xmas"

    class func setup() {
        let defaults = [key: true]
        NSUserDefaults.standardUserDefaults().registerDefaults(defaults)
    }

    class func isEnabled() -> Bool {
        return NSUserDefaults.standardUserDefaults().boolForKey(key)
    }

    class func toggle() {
        NSUserDefaults.standardUserDefaults().setBool(!isEnabled(), forKey: key)
    }
}
