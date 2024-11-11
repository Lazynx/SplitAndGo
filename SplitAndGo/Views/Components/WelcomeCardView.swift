//
//  WelcomeCardView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct WelcomeCardView: View {
    let username: String
    let unpaidAmount: Double
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("С возвращением, \(username)!")
                .font(.title2)
                .bold()
            
            Text("У вас ") +
            Text("\(Int(unpaidAmount))")
                .foregroundColor(.blue) +
            Text(" тг не оплаченных счетов.")
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(CardBackground())
        .padding(.horizontal)
    }
}

