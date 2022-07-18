//
//  StartMainScreenView.swift
//  MVVM_HarryPotter
//
//  Created by worker on 18.07.2022.
//

import UIKit

protocol FacultyTappable: class {
    var gryffindorButtonOnTap: (()->())? { get set}
    var hufflepuffButtonOnTap: (()->())? { get set}
    var ravenclawButtonOnTap: (()->())? { get set}
    var slytherinButtonOnTap: (()->())? { get set}
}

final class StartMainScreenView: UIView {
    
    weak var delegate: FacultyTappable?
    
    private var topTitleImageView: UIImageView! {
        didSet {
            self.topTitleImageView.image = UIImage(named: "topTitle")
            self.topTitleImageView.translatesAutoresizingMaskIntoConstraints = false
            self.topTitleImageView.contentMode = .scaleAspectFill
        }
    }
    
    private var bottomImageView: UIImageView! {
        didSet {
            self.bottomImageView.image = UIImage(named: "death")
            self.bottomImageView.translatesAutoresizingMaskIntoConstraints = false
            self.bottomImageView.contentMode = .scaleAspectFill
        }
    }
    
    private var gryffindorButton: UIButton! {
        didSet {
            self.gryffindorButton.translatesAutoresizingMaskIntoConstraints = false
            self.gryffindorButton.setImage(UIImage(named: "grifEmbl"), for: .normal)
            self.gryffindorButton.addTarget(self, action: #selector(self.gryffindorButtonTapped), for: .touchUpInside)
        }
    }
    
    private var hufflepuffButton: UIButton! {
        didSet {
            self.hufflepuffButton.translatesAutoresizingMaskIntoConstraints = false
            self.hufflepuffButton.addTarget(self, action: #selector(self.hufflepuffButtonTapped), for: .touchUpInside)
            self.hufflepuffButton.setImage(UIImage(named: "hufflepufEmbl"), for: .normal)
        }
    }
    
    private var ravenclawButton: UIButton! {
        didSet {
            self.ravenclawButton.translatesAutoresizingMaskIntoConstraints = false
            self.ravenclawButton.addTarget(self, action: #selector(self.ravenclawButtonTapped), for: .touchUpInside)
            self.ravenclawButton.setImage(UIImage(named: "ravenEmbl"), for: .normal)
        }
    }
    
    private var slytherinButton: UIButton! {
        didSet {
            self.slytherinButton.translatesAutoresizingMaskIntoConstraints = false
            self.slytherinButton.addTarget(self, action: #selector(self.slytherinButtonTapped), for: .touchUpInside)
            self.slytherinButton.setImage(UIImage(named: "slitherEmbl"), for: .normal)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Actions
    @objc func gryffindorButtonTapped() {
        delegate?.gryffindorButtonOnTap?()
    }
    
    @objc func hufflepuffButtonTapped() {
        delegate?.hufflepuffButtonOnTap?()
    }
    
    @objc func ravenclawButtonTapped() {
        delegate?.ravenclawButtonOnTap?()
    }
    
    @objc func slytherinButtonTapped() {
        delegate?.slytherinButtonOnTap?()
    }
    
}
