//
//  RMSearchResultsViewModel.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 16.05.2023.
//

import Foundation

enum RMSearchResultsViewModel {
    case characters([RMCharacterCollectionViewCellViewModel])
    case episodes([RMEpisodeCollectionViewCellViewModel])
    case locations([RMLocationTableViewCellViewModel])
}
