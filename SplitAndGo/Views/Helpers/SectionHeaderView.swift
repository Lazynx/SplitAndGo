//
//  SectionHeaderView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct SectionHeaderView<Destination: View>: View {
    let title: String
    let actionTitle: String
    let destination: Destination?
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title3)
                .bold()
            
            Spacer()
            
            if let destination = destination {
                    NavigationLink(destination: destination) {
                    Text(actionTitle)
                        .foregroundColor(.gray)
                }
            } else {
                Button(actionTitle) {
                }
                .foregroundColor(.gray)
            }
            
//            Button(actionTitle) {
//            }
//            .foregroundColor(.gray)
        }
    }
}
