//
//  HeaderView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct HeaderView: View {
    let userAvatar: String
    let bell = Image(systemName: "bell")
    
    var body: some View {
        HStack {
            Button(action: {}) {
                AvatarView(imageSource: .asset(userAvatar), size: 40)
            }
            
            Spacer()
            
            Button(action: {}) {
                AvatarView(imageSource: .systemName("bell"), size: 30)
            }
            
        }
        .padding()
    }
}
