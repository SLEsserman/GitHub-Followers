//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by Samuel Esserman on 4/27/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
