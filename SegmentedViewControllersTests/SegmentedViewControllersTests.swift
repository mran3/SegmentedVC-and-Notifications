//
//  SegmentedViewControllersTests.swift
//  SegmentedViewControllersTests
//
//  Created by troquer on 09/02/2019.
//  Copyright © 2019 acvc. All rights reserved.
//

import XCTest
@testable import SegmentedViewControllers

class SegmentedViewControllersTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_onBirthDayReturn0() {
        let simpleVC1 = SimpleVC1()
        let birthDay = "2019-09-13"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let formatedBirthDay = dateFormatter.date(from:birthDay)
        XCTAssertEqual(0, simpleVC1.calculateDays(from: formatedBirthDay!))
        
    }

}
