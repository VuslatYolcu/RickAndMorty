//
//  RMServiceViewViewModel.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 8.05.2023.
//

import Foundation

// Responsibilities
// - show search results
// - show no results view
// - kick off API requests

final class RMServiceViewViewModel {
    
    let config: RMSearchViewController.Config
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
}
