//
//  JournalTesting.swift
//  tddJournalTests
//
//  Created by RYAN GREENBURG on 9/9/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import XCTest
@testable import tddJournal

class JournalTesting: XCTestCase {
    
    var sut: Journal?
    
    override func setUp() {
        super.setUp()
        sut = Journal(title: "Test Journal")
    }
    
    func testJournalInit() {
        XCTAssertNotNil(sut, "Test succeeded in \(#function)")
    }
    
    func testJournalLastEdited() {
        XCTAssertNotNil(sut?.lastEdited, "Test succeeded in \(#function)")
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
}
