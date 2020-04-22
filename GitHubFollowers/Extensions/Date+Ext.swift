//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Samuel Esserman on 4/21/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
