//
//  ToDoTests.swift
//  ToDoTests
//
//  Created by Olivier on 27/12/2016.
//  Copyright © 2016 Smartouch. All rights reserved.
//

import XCTest
@testable import ToDo

class ToDoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_ShoulSetTitle() {
        let item = ToDoItem(title: "Test title")
        XCTAssertNotNil(item.title, "Test title", file: "Initializer should set the item title")
    }
    
    func testInit_ShouldSetTitleAndDescription() {
        let item = ToDoItem(title: "Test title", itemDescription: "Test description")
        XCTAssertNotNil(item.itemDescription, "Test description", file: "Initializer should set the item title")
    }
    
    func testInit_ShouldSetTitleAndDescriptionAndTimestamp() {
        let item = ToDoItem(title:"Test title", itemDescription: "Test description", timestamp: 0.0)
        
        XCTAssertEqual(0.0, item.timestamp, file:"Initializer should set the timestamp")
    }
    
    func testInit_ShouldSetTitleAndDescriptionAndTimestampAndLocation() {
        let location = Location(name: "test name")
        let item = ToDoItem(title:"Test title", itemDescription: "Test description", timestamp: 0.0, location: location)
        
        XCTAssertEqual(location.name, item.location?.name, file:"Initializer should set the location")
    }
}
