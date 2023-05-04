//
//  RMSettingsViewController.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 15.04.2023.
//

import UIKit
import SwiftUI

/// Controller to show and search for settings
final class RMSettingsViewController: UIViewController {
    
    private let settingsSwiftUIController = UIHostingController(rootView: RMSettingsView(
        viewModel: RMSettingsViewViewModel(
            cellViewModels: RMSettingsOption.allCases.compactMap({
                return RMSettingsCellViewModel(type: $0)
            })
        )
    )
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Settings"
        addSwiftUIController()
    }

    private func addSwiftUIController() {
        addChild(settingsSwiftUIController)
        view.addSubview(settingsSwiftUIController.view)
        settingsSwiftUIController.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            settingsSwiftUIController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            settingsSwiftUIController.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            settingsSwiftUIController.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            settingsSwiftUIController.view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}
