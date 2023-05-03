//
//  RMEpisodeDetailView.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 2.05.2023.
//

import UIKit

final class RMEpisodeDetailView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
}
