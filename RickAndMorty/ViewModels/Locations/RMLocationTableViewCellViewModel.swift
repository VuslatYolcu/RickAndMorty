//
//  RMLocationTableViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 5.05.2023.
//

import Foundation

struct RMLocationTableViewCellViewModel {
    private let location: RMLocation
    
    init(location: RMLocation) {
        self.location = location
    }
    
    public var name: String {
        return location.name
    }
    
    public var type: String {
        return "Type: " + location.type
    }
    
    public var dimension: String {
        return location.dimension
    }
}

extension RMLocationTableViewCellViewModel: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(location.id)
        hasher.combine(dimension)
        hasher.combine(type)
    }
}

extension RMLocationTableViewCellViewModel: Equatable {
    static func == (lhs: RMLocationTableViewCellViewModel, rhs: RMLocationTableViewCellViewModel) -> Bool {
        return lhs.location.id == rhs.location.id
    }
}
