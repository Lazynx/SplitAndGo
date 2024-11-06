//
//  Bill.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import Foundation

struct Bill: Identifiable {
    let id: UUID = UUID()
    let placeName: String
    let icon: String
    let date: Date
    let totalAmount: Double
    let participants: [User]
}
