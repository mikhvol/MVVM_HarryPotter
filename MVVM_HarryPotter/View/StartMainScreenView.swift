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
    
    private var backgroundImageView: UIImageView! {
        didSet {
            self.backgroundImageView.image = UIImage(named: "hogwarts")
            //self.backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
            self.backgroundImageView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            self.backgroundImageView.contentMode = .scaleAspectFill
        }
    }
    
    private var topTitleImageView: UIImageView! {
        didSet {
            self.topTitleImageView.image = UIImage(named: "topTitle")
            self.topTitleImageView.translatesAutoresizingMaskIntoConstraints = false
            self.topTitleImageView.contentMode = .scaleAspectFit
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
            self.gryffindorButton.addTarget(self, action: #selector(gryffindorButtonTapped), for: .touchUpInside)
        }
    }
    
    private var hufflepuffButton: UIButton! {
        didSet {
            self.hufflepuffButton.translatesAutoresizingMaskIntoConstraints = false
            self.hufflepuffButton.addTarget(self, action: #selector(hufflepuffButtonTapped), for: .touchUpInside)
            self.hufflepuffButton.setImage(UIImage(named: "hufflepufEmbl"), for: .normal)
        }
    }
    
    private var ravenclawButton: UIButton! {
        didSet {
            self.ravenclawButton.translatesAutoresizingMaskIntoConstraints = false
            self.ravenclawButton.addTarget(self, action: #selector(ravenclawButtonTapped), for: .touchUpInside)
            self.ravenclawButton.setImage(UIImage(named: "ravenEmbl"), for: .normal)
        }
    }
    
    private var slytherinButton: UIButton! {
        didSet {
            self.slytherinButton.translatesAutoresizingMaskIntoConstraints = false
            self.slytherinButton.addTarget(self, action: #selector(slytherinButtonTapped), for: .touchUpInside)
            self.slytherinButton.setImage(UIImage(named: "slitherEmbl"), for: .normal)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setup Views
    func setupViews() {
        self.backgroundImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200,
                                                             height: 200))
        self.topTitleImageView = UIImageView(frame: CGRect(x: 35, y: 0, width: 300,
                                                           height: 250))
        self.gryffindorButton = UIButton(frame: CGRect(x: 35, y: 250, width: 150, height: 150))
        self.slytherinButton = UIButton(frame: CGRect(x: 190, y: 235, width: 180, height: 180))
        self.hufflepuffButton = UIButton(frame: CGRect(x: 38, y: 425, width: 150, height: 150))
        self.ravenclawButton = UIButton(frame: CGRect(x: 210, y: 429, width: 152, height: 152))
        
        self.addSubview(backgroundImageView)
        self.addSubview(topTitleImageView)
        self.addSubview(gryffindorButton)
        self.addSubview(slytherinButton)
        self.addSubview(hufflepuffButton)
        self.addSubview(ravenclawButton)
    }
    
    func setupConstraints() {
        
    }
    
    //MARK: - Actions
    @objc private func gryffindorButtonTapped() {
        delegate?.gryffindorButtonOnTap?()
        animateButton(button: gryffindorButton)
    }
    
    @objc private func hufflepuffButtonTapped() {
        delegate?.hufflepuffButtonOnTap?()
        animateButton(button: hufflepuffButton)
    }
    
    @objc private func ravenclawButtonTapped() {
        delegate?.ravenclawButtonOnTap?()
        animateButton(button: ravenclawButton)
    }
    
    @objc private func slytherinButtonTapped() {
        delegate?.slytherinButtonOnTap?()
        animateButton(button: slytherinButton)
    }
    
    private func animateButton(button: UIButton!) {
        UIView.animate(withDuration: 0.6,
            animations: {
                button.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            },
            completion: { _ in
                UIView.animate(withDuration: 0.6) {
                    button.transform = CGAffineTransform.identity
                }
            })
    }
    
}
