//
//  ImageView.swift
//  DoWant
//
//  Created by Bruno Bergami on 29/08/2024.
//

import SwiftUI

struct ImageView: View {
    let item: ImageItem
    let fixedWidth: CGFloat
    let maxHeight: CGFloat

    var body: some View {
        GeometryReader { geometry in
            Image(uiImage: item.image)
                .resizable()
                .scaledToFill()
//                .frame(width: fixedWidth,
//                       height: min(geometry.size.height, maxHeight)
//                )
                .clipped()
        }
        .frame(width: fixedWidth,
               height: fixedWidth * item.image.size.height / item.image.size.width
               )
    }
}

#Preview {
    let demoImage = ImageItem(image: UIImage(named: "demo-pinterest4")!)
    ImageView(item: demoImage,
              fixedWidth: 300,
              maxHeight: 250)
}
