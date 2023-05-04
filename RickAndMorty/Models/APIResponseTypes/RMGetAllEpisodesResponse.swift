//
//  RMGetAllEpisodesResponse.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 2.05.2023.
//

import Foundation

struct RMGetAllEpisodesResponse: Codable {
    
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMEpisode]
}


