//
//  FriendListView.swift
//  SplitAndGo
//
//  Created by Владислав on 12.11.2024.
//

import SwiftUI

struct FriendListView: View {
    let friends: [Friend]
    
    @State private var searchText = ""
    
    var filteredFriends: [Friend] {
        if searchText.isEmpty {
            return friends
        } else {
            return friends.filter{ $0.name.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        VStack {
            SearchBar(placeholder: "Поиск по имени", text: $searchText)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(filteredFriends) { friend in
                        HStack(spacing: 12) {
                            AvatarView(imageSource: .asset(friend.avatarImageLink), size: 45)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text(friend.name)
                                    .font(.headline)
                            }
                            
                            Spacer()
                        }
                        .padding()
                        .cornerRadius(8)
                    }
                    .background(CardBackground())
                }
                .padding(.horizontal)
            }
        }
        .navigationTitle("Друзья")
    }
}
