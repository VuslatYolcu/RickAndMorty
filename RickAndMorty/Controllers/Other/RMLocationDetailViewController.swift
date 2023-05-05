//
//  RMLocationDetailViewController.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 5.05.2023.
//

import UIKit

/// View controller to show details about single location
final class RMLocationDetailViewController: UIViewController {
    
    private let viewModel: RMLocationDetailViewViewModel
    private let detailView = RMLocationDetailView()
    
    // MARK: - Init
    init(location: RMLocation) {
        let url = URL(string: location.url)
        self.viewModel = RMLocationDetailViewViewModel(endpointUrl: url)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(detailView)
        
        addConstraints()
        detailView.delegate = self
        title = "Location"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(didTapShare))
        
        viewModel.delegate = self
        viewModel.fetchLocationData()
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            detailView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            detailView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            detailView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            detailView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
    
    @objc
    private func didTapShare() {
        
    }
}
// MARK: - ViewModel Delegate
extension RMLocationDetailViewController: RMLocationDetailViewViewModelDelegate {
    
    func didFetchLocationDetails() {
        detailView.configure(with: viewModel)
    }
}

// MARK: - View Delegate
extension RMLocationDetailViewController: RMLocationDetailViewDelegate {
    
    func rmLocationDetailView(_ detailView: RMLocationDetailView, didSelect character: RMCharacter) {
        let vc = RMCharacterDetailViewController(viewModel: .init(character: character))
        vc.title = character.name
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
}
