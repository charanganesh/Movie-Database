//
//  TableViewSection.swift
//  Movie Database
//
//  Created by Charan Ganesh on 28/10/24.
//

import Foundation
import UIKit

struct TableViewSection {
    let title: String?
    let footerText: String?
    var items: [any TableViewCellViewModelProtocol]
    var isExpanded: Bool = true
    
    init(
        title: String? = nil,
        footerText: String? = nil,
        items: [any TableViewCellViewModelProtocol]
    ) {
        self.title = title
        self.footerText = footerText
        self.items = items
    }
}
