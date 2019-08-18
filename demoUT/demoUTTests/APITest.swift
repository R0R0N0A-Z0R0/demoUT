//
//  APITest.swift
//  demoUTTests
//
//  Created by Nguyen Trung on 8/18/19.
//  Copyright © 2019 Nguyen Trung. All rights reserved.
//

import XCTest
@testable import demoUT
class APITest: XCTestCase {

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
    
    let api = API()
    let url = "https://api.github.com/search/users?q=thinh"
    func testAPI() {
        let expected = 57434656
        print("aaaaa")
        sleep(10)
        api.requestAPI(url: url) { (result) in
            let resultReturn = result as? [String:Any]
            print("ssssss")
            let actual = resultReturn?["total_count"] as! Int
            print("xxxxxxxxxxxxxxxx")
            print(actual)
            XCTAssertEqual(expected, actual, "sai roi")
        }
        print("mmmmmm")
    }
    

}
