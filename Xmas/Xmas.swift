//
//  Xmas.swift
//
//  Created by Khoa Pham on 12/18/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import AppKit

var sharedPlugin: Xmas?

class Xmas: NSObject {

    var bundle: NSBundle
    lazy var center = NSNotificationCenter.defaultCenter()

    let menuHandler = MenuHandler()

    init(bundle: NSBundle) {
        self.bundle = bundle

        super.init()
        
        center.addObserver(self, selector: Selector("setup"),
            name: NSApplicationDidFinishLaunchingNotification, object: nil)
    }

    // MARK: Setup
    func setup() {
        ToggleManager.setup()
        menuHandler.setup()
    }

    // MARK: Swizzle
    override class func initialize() {
        struct Static {
            static var token: dispatch_once_t = 0
        }

        dispatch_once(&Static.token) {
            swizzleMethods()
        }
    }

    class func swizzleMethods() {
        guard let originalClass = NSClassFromString("DVTBezelAlertPanel") as? NSObject.Type else {
            return
        }

        do {
            try originalClass.jr_swizzleMethod("initWithIcon:message:parentWindow:duration:",
                withMethod: "xmas_initWithIcon:message:parentWindow:duration:")
        }
        catch {
            Swift.print("Swizzling failed")
        }
    }
}
