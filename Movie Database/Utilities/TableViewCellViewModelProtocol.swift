//
//  TableViewCellViewModelProtocol.swift
//  Movie Database
//
//  Created by Charan Ganesh on 28/10/24.
//

import Foundation
import UIKit

protocol TableViewCellViewModelProtocol {
    associatedtype CellType: UITableViewCell
    
    func configureCell(_ cell: CellType)
    func cellInstance(_ tableView: UITableView, indexPath: IndexPath) -> CellType
}

extension TableViewCellViewModelProtocol {
    func cellInstance(_ tableView: UITableView, indexPath: IndexPath) -> CellType {
        let cell = CellType.dequeueReusably(for: tableView, at: indexPath)
        configureCell(cell)
        cell.selectionStyle = .none
        return cell
    }
}
