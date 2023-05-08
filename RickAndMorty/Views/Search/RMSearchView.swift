//
//  RMSearchView.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 8.05.2023.
//

import UIKit

final class RMSearchView: UIView {

    private let viewModel: RMServiceViewViewModel
    
    // MARK: - Subviews
    
    // SearchInputView(bar, selection buttons)
    
    // No results view
    
    // Results collection view
    
    // MARK: - Init
    init(frame: CGRect, viewModel: RMServiceViewViewModel) {
        self.viewModel = viewModel
        super.init(frame: frame)
        backgroundColor = .red
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

// MARK: - Collectionview
extension RMSearchView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
}
