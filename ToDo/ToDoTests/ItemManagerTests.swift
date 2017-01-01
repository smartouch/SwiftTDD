//
//  ItemManagerTests.swift
//  ToDo
//
//  Created by Olivier on 01/01/2017.
//  Copyright © 2017 Smartouch. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemManagerTests: XCTestCase {
    
    var sut: ItemManager!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = ItemManager()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testToDoCount_Initially_ShouldBeZero() {
        XCTAssertEqual(sut.toDoCount, 0, "Initially toDoCount should be 0")
    }
    
    func testDoneCount_Initially_ShouldBeZero() {
        XCTAssertEqual(sut.doneCount, 0, "Initially doneCount should be 0")
    }
    
    // Checking the addition of an item
    func testToDoCount_AfterAddingOneItem_IsOne() {
        sut.addItem(item: ToDoItem(title: "Test title"))
        XCTAssertEqual(sut.toDoCount, 1, "toDoCount should be 1")
    }
    
    func testItemAtIndex_ShouldReturnPreviouslyAddedItem() {
        let item = ToDoItem(title: "Item")
        sut.addItem(item: item)
        
        let returnedItem = sut.itemAtIndex(index: 0)
        
        XCTAssertEqual(item.title, returnedItem.title, "should be the same item")
    }
    
    func testCheckingItem_ChangesCountOfToDoAndOfDoneItems() {
        sut.addItem(item: ToDoItem(title: "First Item"))
        sut.checkItemAtIndex(index: 0)
        
        XCTAssertEqual(sut.toDoCount, 0, "todoCOunt should be 0")
        XCTAssertEqual(sut.doneCount, 1, "doneCount should be 1")
    }
    
    func testCheckingItem_RemovesItFromTheToDoItemList() {
        let firstItem = ToDoItem(title: "First")
        let secondItem = ToDoItem(title: "Second")
        
        sut.addItem(item: firstItem)
        sut.addItem(item: secondItem)
        
        sut.checkItemAtIndex(index: 0)
        
        XCTAssertEqual(sut.itemAtIndex(index: 0).title, secondItem.title)
    }
}
