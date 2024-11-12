//
//  NotificationsView.swift
//  SplitAndGo
//
//  Created by Владислав on 11.11.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text("U have 0 notifications")
        }
        .navigationTitle("Уведомления")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NotificationsView()
}
