//
//  RMGetAllCharactersResponse.swift
//  RM
//
//  Created by Zoufishan Mehdi on 3/26/23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
  let info: Info
  let results: [RMCharacter]
}

struct Info: Codable {
      let count: Int
      let pages: Int
      let next: String?
      let prev: String?
}
