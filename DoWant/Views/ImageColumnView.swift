//
//  ImageColumnView.swift
//  DoWant
//
//  Created by Bruno Bergami on 29/08/2024.
//

import SwiftUI

struct ImageColumnView: View {
    @Environment(\.colorScheme) var colorScheme
    
//    let backgroundColor = colorScheme == .dark ? Color.black : Color.white
//    let textColor =
    
    let items: [ImageItem]
    let fixedWidth: CGFloat
    let maxHeight: CGFloat
    

    var body: some View {
        LazyVGrid(columns: [GridItem(.fixed(fixedWidth))]) {
            ForEach(items) { item in
                ImageView(item: item,
                          fixedWidth: fixedWidth,
                          maxHeight: maxHeight)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(12)
                    .shadow(color: colorScheme == .dark ? Color.white : Color.black,
                            radius: 4,
                            x: 0,
                            y: 0)
            }
        }
        .padding()
    }
}

#Preview {
    let maxHeight: CGFloat = 360
    let fixedWidth: CGFloat = 200
    let imageItems: [ImageItem] = [
        ImageItem(image: UIImage(named: "demo-pinterest1")!),
        ImageItem(image: UIImage(named: "demo-pinterest2")!),
        ImageItem(image: UIImage(named: "demo-pinterest3")!),
        ImageItem(image: UIImage(named: "demo-pinterest4")!),
        ImageItem(image: UIImage(named: "demo-pinterest5")!)
    ]
    ImageColumnView(items: imageItems, fixedWidth: fixedWidth, maxHeight: maxHeight)
}
