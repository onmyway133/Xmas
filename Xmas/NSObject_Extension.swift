//
//  NSObject_Extension.swift
//
//  Created by Khoa Pham on 12/18/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import Foundation

extension NSObject {
    class func pluginDidLoad(bundle: NSBundle) {
        let appName = NSBundle.mainBundle().infoDictionary?["CFBundleName"] as? NSString
        if appName == "Xcode" {
        	if sharedPlugin == nil {
        		sharedPlugin = Xmas(bundle: bundle)
        	}
        }
    }
}