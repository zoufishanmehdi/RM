//
//  RMEpisode.swift
//  RM
//
//  Created by Zoufishan Mehdi on 3/25/23.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
