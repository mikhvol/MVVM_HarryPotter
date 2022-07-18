//
//  StartMainScreenView.swift
//  MVVM_HarryPotter
//
//  Created by worker on 18.07.2022.
//

import UIKit

class StartMainScreenView: UIView {
    
    private var topTitleImageView: UIImageView! {
            didSet {
                self.topTitleImageView.image = UIImage(named: "topTitle.jpg")
                self.topTitleImageView.translatesAutoresizingMaskIntoConstraints = false
                self.topTitleImageView.isUserInteractionEnabled = true
                self.topTitleImageView.contentMode = .scaleAspectFill
            }
        }
    
    private var bottomImageView: UIImageView! {
            didSet {
                self.topTitleImageView.image = UIImage(named: "death")
                self.topTitleImageView.translatesAutoresizingMaskIntoConstraints = false
                self.topTitleImageView.isUserInteractionEnabled = true
                self.topTitleImageView.contentMode = .scaleAspectFill
                self.topTitleImageView.layer.cornerRadius = 10
                self.topTitleImageView.clipsToBounds = true
            }
        }
    
    private var gryffindorButton: UIButton! {
            didSet {
                self.gryffindorButton.translatesAutoresizingMaskIntoConstraints = false
                self.gryffindorButton.setImage(UIImage(named: "grifEmbl"), for: .normal)
                self.gryffindorButton.addTarget(self, action: #selector(self.gryffindorButtonTapped), for: .touchUpInside)
                self.gryffindorButton.setTitleColor(.systemBlue, for: .normal)
            }
        }
    
    private var hufflepuffButton: UIButton! {
            didSet {
                self.hufflepuffButton.translatesAutoresizingMaskIntoConstraints = false
                self.hufflepuffButton.addTarget(self, action: #selector(self.hufflepuffButtonTapped), for: .touchUpInside)
                self.hufflepuffButton.setImage(UIImage(named: "hufflepufEmbl"), for: .normal)
                self.hufflepuffButton.setTitleColor(.systemBlue, for: .normal)
            }
        }
    
    private var ravenclawButton: UIButton! {
            didSet {
                self.ravenclawButton.translatesAutoresizingMaskIntoConstraints = false
                self.ravenclawButton.addTarget(self, action: #selector(self.ravenclawButtonTapped), for: .touchUpInside)
                self.ravenclawButton.setImage(UIImage(named: "ravenEmbl"), for: .normal)
                self.ravenclawButton.setTitleColor(.systemBlue, for: .normal)
            }
        }
    
    private var slytherinButton: UIButton! {
            didSet {
                self.slytherinButton.translatesAutoresizingMaskIntoConstraints = false
                self.slytherinButton.addTarget(self, action: #selector(self.slytherinButtonTapped), for: .touchUpInside)
                self.slytherinButton.setImage(UIImage(named: "slitherEmbl"), for: .normal)
                self.slytherinButton.setTitleColor(.systemBlue, for: .normal)
            }
        }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func gryffindorButtonTapped() {
        
    }
    
    @objc func hufflepuffButtonTapped() {
        
    }
    
    @objc func ravenclawButtonTapped() {
        
    }
    
    @objc func slytherinButtonTapped() {
        
    }
    
}
