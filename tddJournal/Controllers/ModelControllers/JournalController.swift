//
//  JournalController.swift
//  tddJournal
//
//  Created by RYAN GREENBURG on 9/9/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import Foundation

class JournalController {
    
    static let shared = JournalController()
    
    var journals: [Journal] = []
    
    func createJournal(with title: String) {
        let newJournal = Journal(title: title)
        journals.append(newJournal)
    }
    
    func update(_ journal: inout Journal) {
        journal.lastEdited = Date()
    }
    
    func delete(_ journal: Journal) {
        guard let index = journals.firstIndex(of: journal) else { return }
        journals.remove(at: index)
    }
}
