//
//  ViewController.swift
//  ExampleNSOutlineView
//
//  Created by Adriano Bonat on 2/Feb/15.
//  Copyright (c) 2015 Adriano Bonat. All rights reserved.
//

import Cocoa
import Foundation

class ViewController: NSViewController, NSOutlineViewDataSource {
    
    let people: [NSString] = ["Mary", "John", "Paul"] // when using NSString it works fine
    
    func outlineView(outlineView: NSOutlineView, numberOfChildrenOfItem item: AnyObject?) -> Int {
        return item == nil ? people.count : 0
    }
    
    func outlineView(outlineView: NSOutlineView, isItemExpandable item: AnyObject) -> Bool {
        return false
    }
    
    func outlineView(outlineView: NSOutlineView, child index: Int, ofItem item: AnyObject?) -> AnyObject {
        return people[index]
    }
    
    func outlineView(outlineView: NSOutlineView, objectValueForTableColumn tableColumn: NSTableColumn?, byItem item: AnyObject?) -> AnyObject? {
        return item
    }
}
