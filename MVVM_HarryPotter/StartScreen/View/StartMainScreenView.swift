//
//  StartMainScreenView.swift
//  MVVM_HarryPotter
//
//  Created by worker on 18.07.2022.
//

import UIKit
import SnapKit

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
            self.backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
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
        self.backgroundImageView = UIImageView()
        self.topTitleImageView = UIImageView()
        self.gryffindorButton = UIButton()
        self.slytherinButton = UIButton()
        self.hufflepuffButton = UIButton()
        self.ravenclawButton = UIButton()
        
        self.addSubview(backgroundImageView)
        self.addSubview(topTitleImageView)
        self.addSubview(gryffindorButton)
        self.addSubview(slytherinButton)
        self.addSubview(hufflepuffButton)
        self.addSubview(ravenclawButton)
    }
    
    //MARK:- Setup Constraints
    private func setupConstraints() {
        setupConstraintsForBackgroundImage()
        setupConstraintsForTopTitle()
        setupConstraintsForButtons()
    }
    
    private func setupConstraintsForBackgroundImage() {
        backgroundImageView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalTo(self)
        }
    }
    
    private func setupConstraintsForTopTitle() {
        topTitleImageView.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(250)
            make.top.equalTo(20)
            make.centerX.equalTo(self.snp.centerX)
        }
    }
    
    private func setupConstraintsForButtons() {
        gryffindorButton.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(150)
            make.centerY.equalTo(snp.centerY)
            make.leading.equalTo(35)
        }
        
        slytherinButton.snp.makeConstraints { make in
            make.width.equalTo(180)
            make.height.equalTo(180)
            make.centerY.equalTo(snp.centerY)
            make.trailing.equalTo(-8)
        }
        
        hufflepuffButton.snp.makeConstraints { make in
            make.width.equalTo(145)
            make.height.equalTo(145)
            make.top.equalTo(gryffindorButton.snp.bottom).inset(-30)
            make.centerX.equalTo(gryffindorButton.snp.centerX)
        }
        
        ravenclawButton.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(150)
            make.top.equalTo(slytherinButton.snp.bottom).inset(-15)
            make.centerX.equalTo(slytherinButton.snp.centerX)
        }
    }
    
    //MARK: - Actions
    @objc private func gryffindorButtonTapped() {
        delegate?.gryffindorButtonOnTap?()
        gryffindorButton.startAnimation()
    }
    
    @objc private func hufflepuffButtonTapped() {
        delegate?.hufflepuffButtonOnTap?()
        hufflepuffButton.startAnimation()
    }
    
    @objc private func ravenclawButtonTapped() {
        delegate?.ravenclawButtonOnTap?()
        ravenclawButton.startAnimation()
    }
    
    @objc private func slytherinButtonTapped() {
        delegate?.slytherinButtonOnTap?()
        slytherinButton.startAnimation()
    }
    
    
}
