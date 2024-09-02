//
//  BoardView.swift
//  DoWant
//
//  Created by Bruno Bergami on 18/08/2024.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        let maxHeight: CGFloat = 360
        let totalPadding: CGFloat = 90 // Leading horizontal variable
        let columnWidth: CGFloat = (screenWidth - totalPadding) / 2
        let horizontalPadding: CGFloat = totalPadding / 3
        let imageItems: [ImageItem] = [ // Known issue: the first image breaks the padding on .top
            ImageItem(image: UIImage(named: "demo-pinterest4")!),
            ImageItem(image: UIImage(named: "demo-pinterest5")!),
            ImageItem(image: UIImage(named: "demo-pinterest6")!),
            ImageItem(image: UIImage(named: "demo-pinterest7")!),
            ImageItem(image: UIImage(named: "demo-pinterest1")!),
            ImageItem(image: UIImage(named: "demo-pinterest2")!),
            ImageItem(image: UIImage(named: "demo-pinterest3")!),
            ImageItem(image: UIImage(named: "demo-pinterest8")!)
        ]
        
        ScrollView {
            HStack {
                VStack {
                    ForEach(0 ..< imageItems.count / 2, id: \.self) { index in
                        ImageColumnView(items: [imageItems[index]],
                                        fixedWidth: columnWidth,
                                        maxHeight: maxHeight)
                    }
                }
                
                VStack {
                    ForEach(imageItems.count / 2 ..< imageItems.count,
                            id: \.self) { index in
                        ImageColumnView(items: [imageItems[index]],
                                        fixedWidth: columnWidth,
                                        maxHeight: maxHeight
                        )
                    }
                }
            }
            .padding(.horizontal, horizontalPadding)
        }
    }
}

#Preview {
    BoardView()
}
