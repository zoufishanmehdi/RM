//
//  RMCharacterDetailViewViewModel.swift
//  RM
//
//  Created by Zoufishan Mehdi on 3/27/23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    var title: String {
        return character.name
    }
    
    init(character: RMCharacter) {
        self.character = character
    }
}
