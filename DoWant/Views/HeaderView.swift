//
//  HeaderView.swift
//  DoWant
//
//  Created by Bruno Bergami on 19/08/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 187/255, green: 223/255, blue: 0/255))
                .rotationEffect(Angle(degrees: -15))
                .offset(y: -30)
            VStack {
                Text("DO WANT")
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 50))
                    .padding(.top, 20)
            }
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
