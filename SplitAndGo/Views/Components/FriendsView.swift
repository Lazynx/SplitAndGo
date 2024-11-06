//
//  FriendsView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct FriendsView: View {
    let friends: [Friend]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            SectionHeaderView(
                title: "Друзья",
                actionTitle: "\(friends.count) >"
            )
            
            LazyHGrid(rows: [GridItem(.adaptive(minimum: 60))], spacing: 16) {
                AddFriendButton()
                
                ForEach(friends) { friend in
                    FriendCircleView(friend: friend)
                }
            }
        }
        .padding()
    }
}
