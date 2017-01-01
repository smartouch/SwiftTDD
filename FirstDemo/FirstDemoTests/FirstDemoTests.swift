//
//  FirstDemoTests.swift
//  FirstDemoTests
//
//  Created by Olivier on 25/12/2016.
//  Copyright © 2016 Smartouch. All rights reserved.
//

import XCTest
@testable import FirstDemo

class FirstDemoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNumberOfVowelsInString_ShouldReturnNumberOfVowels() {
        let viewController = ViewController()
        
        let string = "Dominik"
        
        let numberOfVowels = viewController.numberOfVowelsInString(string: string)
        
        XCTAssertEqual(numberOfVowels, 4, "should find 4 vowels in Dominik")
    }
    
    func testMakeHeadline_ReturnsStringWithEachWordStartCapital()
    {
        let viewController = ViewController()
        let string = "this is A test headline"
        let headline = viewController.makeHeadline(string:string)
        
        XCTAssertEqual(headline, "This Is A Test Headline")
    }
    
}
