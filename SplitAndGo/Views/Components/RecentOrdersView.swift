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
                actionTitle: "Посмотреть все"
            )
            
            ForEach(bills) { bill in
                OrderCardView(bill: bill)
            }
        }
        .padding(.horizontal)
    }
}
