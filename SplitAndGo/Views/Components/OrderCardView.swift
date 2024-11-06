//
//  OrderCardView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct OrderCardView: View {
    let bill: Bill
    
    var body: some View {
        VStack(spacing: 8) {
            HStack(spacing: 12) {
                Text(bill.icon)
                    .font(.title2)
                    .frame(width: 40, height: 40)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(bill.placeName)
                        .font(.headline)
                    Text(DateFormatterHelper.shared.string(from: bill.date))
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Text("\(Int(bill.totalAmount)) тг")
                    .bold()
            }
            
            Divider()
            
            ParticipantsView(participants: bill.participants)
        }
        .padding()
        .background(CardBackground())
    }
}
