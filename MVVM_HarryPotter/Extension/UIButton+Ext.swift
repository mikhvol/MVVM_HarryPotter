//
//  UIButton+Ext.swift
//  MVVM_HarryPotter
//
//  Created by worker on 04.08.2022.
//

import Foundation
import UIKit

extension UIButton {
    func startAnimation() {
        UIView.animate(withDuration: 0.6,
                       animations: {
                        self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
                       },
                       completion: { _ in
                        UIView.animate(withDuration: 0.6) {
                            self.transform = CGAffineTransform.identity
                        }
                       })
    }
}
