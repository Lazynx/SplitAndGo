//
//  DateFormatterHelper.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import Foundation

struct DateFormatterHelper {
    static let shared: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
}
