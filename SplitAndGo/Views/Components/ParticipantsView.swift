//
//  ParticipantsView.swift
//  Split&Go
//
//  Created by Владислав on 05.11.2024.
//
import SwiftUI

struct ParticipantsView: View {
    let participants: [User]
    
    var body: some View {
        HStack(spacing: 5) { // Устанавливаем положительный spacing между иконками и цифрой
            HStack(spacing: -10) { // Отрицательный spacing для перекрытия иконок
                ForEach(participants.prefix(3)) { participant in
                    AvatarView(imageSource: .asset(participant.avatarImageLink), size: 30)
                }
            }
            
            if participants.count > 3 {
                Text("+\(participants.count - 3)")
                    .font(.caption)
            }
            
            Spacer()
            
            HStack(spacing: 4) {
                Text("Разделили с")
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("\(participants.count)")
                    .font(.caption)
                    .foregroundColor(.blue)
                Text("людьми")
                    .font(.caption)
                    .foregroundColor(.blue)
            }
        }
    }
}
