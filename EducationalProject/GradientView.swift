//
//  GradientView.swift
//  EducationalProject
//
//  Created by Алексей on 01.07.2022.
//

import Foundation
import UIKit

class GradientView: UIView {
    
    @IBInspectable private var firstColor: UIColor? {
        didSet {
            setupGradientsColor()
        }
    }
    
    @IBInspectable private var secondColor: UIColor? {
        didSet {
            setupGradientsColor()
        }
    }
    
    private let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradientsColor()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
    private func setupGradientsColor() {
        self.layer.addSublayer(gradientLayer)
        gradientLayer.colors = [
            firstColor?.cgColor ?? UIColor.yellow.cgColor,
            secondColor?.cgColor ?? UIColor.blue.cgColor
        ]
    }
}
