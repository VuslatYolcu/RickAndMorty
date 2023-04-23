//
//  RMCharacterEpisodeCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 22.04.2023.
//

import Foundation

final class RMCharacterEpisodeCollectionViewCellViewModel {
    let episodeDataUrl: URL?
    
    init(episodeDataUrl: URL?) {
        self.episodeDataUrl = episodeDataUrl
    }
}
