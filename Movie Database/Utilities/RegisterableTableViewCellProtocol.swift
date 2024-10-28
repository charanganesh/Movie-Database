//
//  RegisterableTableViewCellProtocol.swift
//  Movie Database
//
//  Created by Charan Ganesh on 28/10/24.
//

import Foundation
import UIKit

protocol RegisterableTableViewCellProtocol {
    static var reuseIdentifier: String { get }
    static var nib: UINib { get }
    static func dequeueReusably(for tableView: UITableView, at indexPath: IndexPath) -> Self
}

extension RegisterableTableViewCellProtocol where Self: UITableViewCell {
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
    
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
    
    static func dequeueReusably(for tableView: UITableView, at indexPath: IndexPath) -> Self {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? Self else {
            fatalError("Error dequeuing cell with identifier: \(reuseIdentifier)")
        }
        return cell
    }
}
