import SwiftUI

struct AvatarView: View {
    let imageSource: ImageSource
    let size: CGFloat
    
    var body: some View {
        Group {
            switch imageSource {
            case .url(let imageURL):
                AsyncImage(url: URL(string: imageURL)) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFill()
                    } else if phase.error != nil {
                        Image(systemName: "person.crop.circle.badge.exclamationmark")
                            .resizable()
                            .scaledToFit()
                    }
                }
            case .systemName(let systemName):
                Image(systemName: systemName)
                    .resizable()
                    .scaledToFit()
            case .asset(let assetName):
                Image(assetName)
                    .resizable()
                    .scaledToFill()
            }
        }
        .frame(width: size, height: size)
//        .clipShape(Circle())
//        .overlay(
//            Circle()
//                .stroke(Color.white, lineWidth: 2)
//        )
//        .clipped()
    }
}

enum ImageSource {
    case url(String)
    case systemName(String)
    case asset(String)
}
