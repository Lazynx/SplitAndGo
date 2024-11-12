//
//  SearchBar.swift
//  SplitAndGo
//
//  Created by Владислав on 12.11.2024.
//

import SwiftUI

struct SearchBar: View {
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
            .background(CardBackground())
    }
}
