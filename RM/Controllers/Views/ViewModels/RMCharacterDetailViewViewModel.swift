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
    
    public var species: String {
        character.species
    }
    
    private var imageUrl: URL? {
        URL(string: character.image)
    }
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        guard let imageUrl = imageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        RMImageLoader.shared.downloadImage(imageUrl, completion: completion)
    }
}
