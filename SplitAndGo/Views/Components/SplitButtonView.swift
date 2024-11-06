//
//  SplitButtonView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct SplitButtonView: View {
    var body: some View {
        Button(action: {}) {
            Text("Разделить")
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .cornerRadius(15)
        }
        .padding(.horizontal)
    }
}
