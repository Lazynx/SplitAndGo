//
//  Friend.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import Foundation

struct Friend: Identifiable {
    let id: UUID = UUID()
    let name: String
    let avatarImageLink: String
}
