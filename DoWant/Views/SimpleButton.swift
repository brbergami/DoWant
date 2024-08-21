//
//  SimpleButton.swift
//  DoWant
//
//  Created by Bruno Bergami on 19/08/2024.
//

import SwiftUI

struct SimpleButton: View {
    let text: String
    let color: Color
    let callback: () -> Void
    
    var body: some View {
        Button {
            callback()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(
                        red: 187/255,
                        green: 223/255,
                        blue: 0/255
                    ))
                Text(text)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    SimpleButton(text: "Accept",
                 color: Color.blue,
                 callback: {}
    )
}
