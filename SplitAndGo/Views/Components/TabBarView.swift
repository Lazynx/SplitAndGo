//
//  TabBarView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct TabBarView: View {
    @EnvironmentObject var cameraViewModel: CameraViewModel
    
    var body: some View {
        HStack(spacing: 0) {
            TabBarButton(systemName: "house", isSelected: true, action: {
                
            })
            TabBarButton(systemName: "camera", isSelected: false, action: {
                cameraViewModel.isShowingCamera = true
            })
        }
        .padding(.vertical, 8)
        .background(Color.white)
        .shadow(color: Color.black.opacity(0.1), radius: 10, y: -5)
        .fullScreenCover(isPresented: $cameraViewModel.isShowingCamera) {
            ImagePicker(sourceType: .camera) { image in
                cameraViewModel.isShowingCamera = false
            }
            .background(Color.black)
        }
    }
}
