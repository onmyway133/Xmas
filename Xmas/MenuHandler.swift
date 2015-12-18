//
//  MenuHandler.swift
//  Xmas
//
//  Created by Khoa Pham on 12/19/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import AppKit

class MenuHandler: NSObject {
    func setup() {
        if let edit = NSApp.mainMenu?.itemWithTitle("Edit") {
            let xmas = NSMenuItem(title: "Xmas", action: nil, keyEquivalent: "")
            xmas.enabled = true
            xmas.submenu = NSMenu(title: xmas.title)

            edit.submenu?.addItem(NSMenuItem.separatorItem())
            edit.submenu?.addItem(xmas)

            let toggle = NSMenuItem(title: "", action: Selector("toggle:"), keyEquivalent: "")
            toggle.target = self
            configureToggleItem(toggle)
            xmas.submenu?.addItem(toggle)
        }
    }

    func toggle(menuItem: NSMenuItem) {
        ToggleManager.toggle()
        configureToggleItem(menuItem)
    }

    func configureToggleItem(item: NSMenuItem) {
        let title = ToggleManager.isEnabled() ? "Disable" : "Enable"
        item.title = title
    }
}
