//
//  ViewController.swift
//  MVVM_HarryPotter
//
//  Created by worker on 18.07.2022.
//

import UIKit
import SnapKit

class StartViewController: UIViewController {
    var gryffindorButtonOnTap: (() -> ())?
    var hufflepuffButtonOnTap: (() -> ())?
    var ravenclawButtonOnTap:  (() -> ())?
    var slytherinButtonOnTap:  (() -> ())?
    
    var viewModel = StartMainScreenViewModel()
    
    //MARK:- Lifecycle
    override func loadView() {
        let startMainScreenView = StartMainScreenView(frame: CGRect.zero)
        startMainScreenView.delegate = self
        self.view = startMainScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupActionsForFacultyButtons()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    //MARK:- Actions
    func setupActionsForFacultyButtons() {
        gryffindorButtonOnTap = {
            let studentsVC = StudentsScreenViewController()
            self.navigationController?.pushViewController(studentsVC, animated: true)
        }
        
        hufflepuffButtonOnTap = {
            print("hufflepuffButtonOnTap")
        }
        
        ravenclawButtonOnTap = {
            print("ravenclawButtonOnTap")
        }
        
        slytherinButtonOnTap = {
            print("slytherinButtonOnTap")
        }
    }
}

extension StartViewController: FacultyTappable {}
