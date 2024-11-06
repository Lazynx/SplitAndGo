//
//  HeaderView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct HeaderView: View {
    let userAvatar: String
    
    var body: some View {
        HStack {
            AvatarView(imageURL: userAvatar, size: 40)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell")
                    .foregroundColor(.black)
            }
            
        }
        .padding()
    }
}
