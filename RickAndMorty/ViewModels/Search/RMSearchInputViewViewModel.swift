//
//  RMSearchInputViewViewModel.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 8.05.2023.
//

import Foundation

final class RMSearchInputViewViewModel {
    
    private let type: RMSearchViewController.Config.`Type`
    
    enum DynamicOption: String {
        case status = "Status"
        case gender = "Gender"
        case locationType = "Location Type"
    }
    
    // MARK: - Init
    init(type: RMSearchViewController.Config.`Type`) {
        self.type = type
    }
    
    // MARK: - Public
    public var hasDynamicOptions: Bool {
        switch self.type {
        case .character, .location:
            return true
        case . episode:
            return false
        }
    }
    
    public var options: [DynamicOption] {
        switch self.type {
        case .character:
            return [.status, .gender]
        case .location:
            return [.locationType]
        case .episode:
            return []
        }
    }
    
    public var searchPlaceHolderText: String {
        switch self.type {
        case .character:
            return "Character Name"
        case .location:
            return "Location Name"
        case .episode:
            return "Episode Title"
        }
    }
}
