//
//  UIView+Extension.swift
//  alura-viagens
//
//  Created by Naiara Pantuza on 02/06/23.
//

import UIKit

extension UIView {
    func addShadow() {
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = .zero
        layer.shadowRadius = 10
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        layer.cornerRadius = 10
    }
}
