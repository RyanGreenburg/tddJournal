//
//  Journal.swift
//  tddJournal
//
//  Created by RYAN GREENBURG on 9/9/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

import Foundation

struct Journal {
    let title: String
    var lastEdited: Date
    
    init(title: String, lastEdited: Date = Date()) {
        self.title = title
        self.lastEdited = lastEdited
    }
}

extension Journal: Equatable {
    
}
