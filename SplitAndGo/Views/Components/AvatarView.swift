//
//  AvatarView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct AvatarView: View {
    let imageURL: String
    let size: CGFloat
    
    var body: some View {
        Image(imageURL)
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 2)
            )
            .clipped()
    }
}
