//
//  RMEpisodeDetailViewController.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 23.04.2023.
//

import UIKit

/// View controller to show details about single episode
final class RMEpisodeDetailViewController: UIViewController {
    
    private let viewModel: RMEpisodeDetailViewViewModel?
    
    // MARK: - Init
    init(url: URL?) {
        self.viewModel = .init(endpointUrl: url)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Episode"
        view.backgroundColor = .systemGreen
    }
}
