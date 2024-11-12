//
//  SplitButtonView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//

import SwiftUI

struct SplitButtonView: View {
    @EnvironmentObject var cameraViewModel: CameraViewModel
    
    var body: some View {
        Button(action: {
            cameraViewModel.isShowingCamera = true
        }) {
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
