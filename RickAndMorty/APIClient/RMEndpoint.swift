//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 15.04.2023.
//

import Foundation

/// Represents unique API call
@frozen enum RMEndpoint: String, CaseIterable, Hashable {
    
    case character // "character
    case location
    case episode
}
