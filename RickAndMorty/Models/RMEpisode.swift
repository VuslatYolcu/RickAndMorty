//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 15.04.2023.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let airDate: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
