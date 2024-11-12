//
//  RecentOrdersView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct RecentOrdersView: View {
    let bills: [Bill]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            SectionHeaderView(
                title: "Последние заказы",
                actionTitle: "\(bills.count) >",
                destination: RecentOrdersListView()
            )
            
            if bills.isEmpty {
                Text("Нет доступных заказов")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .padding()
            } else {
                ForEach(bills.prefix(2)) { bill in
                    OrderCardView(bill: bill)
                }
            }
        }
        .padding(.horizontal)
    }
}
