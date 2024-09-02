//
//  BoardViewModel.swift
//  DoWant
//
//  Created by Bruno Bergami on 18/08/2024.
//

import Foundation

class BoardViewModel: ObservableObject {
    @Published var isNewTileShown: Bool = false
    
    init () {}
    
    func toggleNewTileShown() {
        isNewTileShown.toggle()
    }
}
