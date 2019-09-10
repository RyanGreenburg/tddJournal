//
//  JournalControllerTesting.swift
//  tddJournalTests
//
//  Created by RYAN GREENBURG on 9/9/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import XCTest
@testable import tddJournal

class JournalControllerTesting: XCTestCase {
    
    var sut: JournalController!
    
    override func setUp() {
        super.setUp()
        sut = JournalController.shared
    }
    
    func testCreateJournal() {
        sut.createJournal(with: "Test Journal")
        XCTAssertTrue(sut.journals.count > 0)
    }
    
    func testUpdateJournal() {
        var journal = Journal(title: "Test Journal")
        let timestamp = journal.lastEdited
        sut.update(&journal)
        XCTAssertFalse(timestamp == journal.lastEdited)
    }
    
    func testDeleteJournal() {
        sut.createJournal(with: "Test Journal1")
        sut.createJournal(with: "Test Journal2")
        let journalToDelete = sut.journals[0]
        sut.delete(journalToDelete)
        XCTAssertFalse(sut.journals.contains(journalToDelete))
        
        addTeardownBlock {
            print("Test passed successfully in \(#function)")
        }
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
}
