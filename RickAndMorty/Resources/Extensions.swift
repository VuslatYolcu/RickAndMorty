//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Vuslat Yolcu on 17.04.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
