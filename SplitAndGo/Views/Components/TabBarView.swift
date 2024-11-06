//
//  TabBarView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct TabBarView: View {
    @StateObject var viewModel = TabBarViewModel()
    
    var body: some View {
        HStack(spacing: 0) {
            TabBarButton(systemName: "house", isSelected: true, action: {
                
            })
            TabBarButton(systemName: "camera", isSelected: false, action: {
                viewModel.isShowingCamera = true
            })
            TabBarButton(systemName: "map", isSelected: false, action: {
                
            })
        }
        .padding(.vertical, 8)
        .background(Color.white)
        .shadow(color: Color.black.opacity(0.1), radius: 10, y: -5)
        .sheet(isPresented: $viewModel.isShowingCamera) {
            ImagePicker(sourceType: .camera) { image in
                // Обработка полученного изображения
                viewModel.isShowingCamera = false
            }
        }
    }
}
