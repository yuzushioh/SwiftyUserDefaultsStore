//
//  SwiftyUserDefaultsTests.swift
//  Example
//
//  Created by 福田涼介 on 9/3/16.
//  Copyright © 2016 yuzushioh. All rights reserved.
//

import XCTest
@testable import SwiftyUserDefaultsStore

class SwiftyUserDefaultsTests: XCTestCase {
    
    func testInteger() {
        let integer = StoreKey<Int>(key: "integer")
        let value = 100
        integer.value = value
        XCTAssertEqual(integer.value, 100)
    }
    
    func testString() {
        let string = StoreKey<String>(key: "string")
        let value = "yuzushioh"
        string.value = value
        XCTAssertEqual(string.value, value)
    }
    
    func testBool() {
        let bool = StoreKey<Bool>(key: "bool")
        let value = false
        bool.value = value
        XCTAssertEqual(bool.value, value)
    }
    
    func testDouble() {
        let double = StoreKey<Double>(key: "double")
        let value = 10.5
        double.value = value
        XCTAssertEqual(double.value, value)
    }
}
