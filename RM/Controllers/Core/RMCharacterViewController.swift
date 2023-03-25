//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Zoufishan Mehdi on 12/29/22.
//

import UIKit

/// Character to show and search for Characters 
class RMCharacterViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(endpoint: .character,
        queryParameters: [
            URLQueryItem(name: "name", value: "rick"),
            URLQueryItem(name: "status", value: "alive")
        ])
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
        
        }
    }
}
