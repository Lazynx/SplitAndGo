//
//  FriendCircleView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct FriendCircleView: View {
    let friend: Friend
    
    var body: some View {
        VStack {
            AvatarView(imageSource: .asset(friend.avatarImageLink), size: 80)
            
            Text(friend.name)
                .font(.caption)
                .multilineTextAlignment(.center)
        }
    }
}
