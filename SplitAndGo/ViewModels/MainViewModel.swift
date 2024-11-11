//
//  MainViewModel.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import Foundation
import Combine

class MainViewModel: ObservableObject {
    @Published var user: User
    @Published var recentBills: [Bill]
    @Published var friends: [Friend]
    
    init() {
        self.user = User(name: "Ернур", unpaidBillsAmount: 3590.0, email: "ernur@mail.ru", password: "12345", avatarImageLink: "User")
        
        let user1 = User(
            name: "John Doe",
            unpaidBillsAmount: 1500,
            email: "john.doe@example.com",
            password: "password123",
            avatarImageLink: "avatarOrders1"
        )

        let user2 = User(
            name: "Jane Smith",
            unpaidBillsAmount: 800,
            email: "jane.smith@example.com",
            password: "password456",
            avatarImageLink: "avatarOrders2"
        )
        
        let user3 = User(
            name: "Jane Smith",
            unpaidBillsAmount: 800,
            email: "jane.smith@example.com",
            password: "password456",
            avatarImageLink: "avatarOrders3"
        )
        
        self.recentBills = [
            Bill(
                placeName: "Myata Lounge",
                icon: "🍔",
                date: Date(),
                totalAmount: 10000,
                participants: [user1, user2, user3, user1]
            ),
            Bill(
                placeName: "Serik KBTU",
                icon: "☕️",
                date: Date(),
                totalAmount: 2680,
                participants: [user2, user3]
            )
        ]
        
        self.friends = [
            Friend(name: "Test1", avatarImageLink: "avatar1"),
            Friend(name: "Test2", avatarImageLink: "avatar2"),
            Friend(name: "Test3", avatarImageLink: "avatar3")
        ]
    }
}
