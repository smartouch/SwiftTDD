//
//  ItemManager.swift
//  ToDo
//
//  Created by Olivier on 01/01/2017.
//  Copyright © 2017 Smartouch. All rights reserved.
//

import Foundation

class ItemManager {
    var toDoCount = 0
    var doneCount = 0
    private var toDoItems = [ToDoItem]()
    
    // Method to add items
    func addItem(item: ToDoItem) {
        toDoCount += 1
        toDoItems.append(item)
    }
    
    // Method to return the item given an index
    func itemAtIndex(index: Int) -> ToDoItem {
        return toDoItems[index]
    }
    
    // Method to set a given item as checked
    func checkItemAtIndex(index: Int) {
        toDoCount -= 1
        doneCount += 1
        _ = toDoItems.remove(at:  index)
    }
}
