//
//  MainView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = MainViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            HeaderView(userAvatar: viewModel.user.avatarImageLink)
            
            ScrollView {
                VStack(spacing: 15) {
                    WelcomeCardView(
                        username: viewModel.user.name,
                        unpaidAmount: viewModel.user.unpaidBillsAmount
                    )
                    
                    SplitButtonView()
                    
                    RecentOrdersView(bills: viewModel.recentBills)
                    
                    FriendsView(friends: viewModel.friends)
                }
                .padding(.top)
            }
            
            TabBarView()
        }
        .background(Color(hex: "F8F8F8"))
    }
}
