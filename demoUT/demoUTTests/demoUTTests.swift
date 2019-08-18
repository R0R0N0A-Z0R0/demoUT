//
//  demoUTTests.swift
//  demoUTTests
//
//  Created by Nguyen Trung on 8/18/19.
//  Copyright © 2019 Nguyen Trung. All rights reserved.
//

import XCTest
@testable import demoUT

class demoUTTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    // gia tri dau vao dung
    let num = Number()
    let a = 3
    let b = 9
    func testSum(){
        let expected = 8
        let actual = num.sum(a:a,b:b)
        XCTAssertEqual(expected, actual, "sai roi")
    }

}
