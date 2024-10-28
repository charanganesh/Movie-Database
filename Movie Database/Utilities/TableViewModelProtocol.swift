//
//  TableViewModelProtocol.swift
//  Movie Database
//
//  Created by Charan Ganesh on 26/10/24.
//

import UIKit




protocol TableViewModelProtocol: AnyObject {
    var sections: [TableViewSection] { get }
    var registerableCells: [RegisterableTableViewCellProtocol.Type] { get }
    func cellViewModel(for section: Int, row: Int) -> any TableViewCellViewModelProtocol
}

extension TableViewModelProtocol {
    func cellViewModel(for section: Int, row: Int) -> any TableViewCellViewModelProtocol {
        return sections[section].items[row]
    }
}




