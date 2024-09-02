//
//  NewTileView.swift
//  DoWant
//
//  Created by Bruno Bergami on 18/08/2024.
//

import SwiftUI

struct NewTileView: View {
    @StateObject var viewModel = NewTileViewModel()
    
    var body: some View {
        VStack {
            Text("New wish")
                .bold()
                .font(.system(size: 32))
                .padding(.top, 50)
            
            Form {
                TextField("Name (optional)",
                          text: $viewModel.title)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding()
                        .listRowSeparator(.hidden)
                
                TextField("Link",
                          text: $viewModel.link)
                    .padding()
                    .listRowSeparator(.hidden)
                
                SimpleButton(text: "Create wish", callback: {
                    viewModel.createTile()
                })
                .padding()
            }
        }
    }
}

#Preview {
    NewTileView()
}
