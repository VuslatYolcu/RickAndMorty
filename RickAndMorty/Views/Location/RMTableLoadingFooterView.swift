//
//  RMTableLoadingFooterView.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 18.05.2023.
//

import UIKit

final class RMTableLoadingFooterView: UIView {

    private let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView()
        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.hidesWhenStopped = true
        return spinner
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(spinner)
        spinner.startAnimating()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    private func addConstraints() {
        NSLayoutConstraint.activate([
            spinner.widthAnchor.constraint(equalToConstant: 55),
            spinner.heightAnchor.constraint(equalToConstant: 55),
            spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
            
//            self.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
//            self.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
}
