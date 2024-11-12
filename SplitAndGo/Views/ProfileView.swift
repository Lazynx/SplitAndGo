//
//  ProfileView.swift
//  SplitAndGo
//
//  Created by Владислав on 11.11.2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject private var viewModel = MainViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.user.name)
        }
        .navigationTitle("Профиль")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView()
}
