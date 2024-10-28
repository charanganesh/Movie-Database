//
//  UITableView+Extensions.swift
//  Movie Database
//
//  Created by Charan Ganesh on 28/10/24.
//

import UIKit

extension UITableViewCell: RegisterableTableViewCellProtocol {}

extension UITableView {
    func register(cells: [RegisterableTableViewCellProtocol.Type]) {
        cells.forEach { cell in
            self.register(
                UINib(nibName: cell.reuseIdentifier, bundle: nil),
                forCellReuseIdentifier: cell.reuseIdentifier
            )
        }
    }
}
