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
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testToDoCount_Initially_ShouldBeZero() {
        let sut = ItemManager()
        XCTAssertEqual(sut.toDoCount, 0,
                       "Initially toDo count should be 0")
    }
    
}
