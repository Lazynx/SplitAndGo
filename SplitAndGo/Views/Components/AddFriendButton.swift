//
//  AddFriendButton.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct AddFriendButton: View {
    var body: some View {
        VStack {
            Circle()
                .stroke(Color.blue, lineWidth: 1)
                .frame(width: 80, height: 60)
                .overlay(
                    Image(systemName: "person.badge.plus")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.blue)
                )
            
            Text("Добавить\nдруга")
                .font(.caption)
                .multilineTextAlignment(.center)
        }
    }
}
