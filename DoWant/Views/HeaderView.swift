//
//  HeaderView.swift
//  DoWant
//
//  Created by Bruno Bergami on 19/08/2024.
//

import SwiftUI

struct HeaderView: View {
    var subtitle: String
    var position: String
    var backgroundAngle: Double
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 187/255,
                                       green: 223/255,
                                       blue: 0/255))
                .rotationEffect(Angle(degrees: backgroundAngle))
                .offset(y: -30)
            VStack {
                Text("DoWant!")
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 50))
                    .padding(.top, 20)
                    
                Text(subtitle)
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 24))
                    .frame(maxWidth: UIScreen.main.bounds.width,
                           alignment: position == "left" ? .leading : .trailing)
                    .offset(x: position == "left" ? 30 : -30)
                    .padding(.top, 5)
            }
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView(subtitle: "Subtitle",
               position: "left",
               backgroundAngle: -15)
}
