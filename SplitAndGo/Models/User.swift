//
//  User.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import Foundation

struct User: Identifiable {
    let id: UUID = UUID()
    let name: String
    let unpaidBillsAmount: Double
    let email: String
    let password: String
    let avatarImageLink: String
}
