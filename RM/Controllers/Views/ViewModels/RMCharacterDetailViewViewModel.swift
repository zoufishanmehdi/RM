//
//  RMCharacterDetailViewViewModel.swift
//  RM
//
//  Created by Zoufishan Mehdi on 3/27/23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    public var title: String {
        character.name.uppercased()
    }
    
    init(character: RMCharacter) {
        self.character = character
    }
}
