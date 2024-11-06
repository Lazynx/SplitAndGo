//
//  SectionHeaderView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct SectionHeaderView: View {
    let title: String
    let actionTitle: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title3)
                .bold()
            
            Spacer()
            
            Button(actionTitle) {
            }
            .foregroundColor(.gray)
        }
    }
}
