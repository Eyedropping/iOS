//
//  Date+Utilities.swift
//  Survey
//
//  Created by Owen Mathews on 7/18/19.
//  Copyright © 2019 Owen Mathews. All rights reserved.
//

import Foundation
import UIKit

extension Date {
    
    static private var mmddyyFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    var mmddyyString: String {
        return Date.mmddyyFormatter.string(from: self)
    }
    
    static private var monthDayYearFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
    
    var monthDayYearString: String {
        return Date.monthDayYearFormatter.string(from: self)
    }
    
}
