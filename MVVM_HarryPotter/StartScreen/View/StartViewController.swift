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
    
    var viewModel = StudentsScreenViewModel()
    
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
    
    //MARK:- Actions
    func setupActionsForFacultyButtons() {
        gryffindorButtonOnTap = {
            print("gryffindorButtonOnTap")
            self.viewModel.getCharachters { charachters in
                print(charachters!.first!.name)
            }
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
