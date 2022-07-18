//
//  ViewController.swift
//  MVVM_HarryPotter
//
//  Created by worker on 18.07.2022.
//

import UIKit

class StartViewController: UIViewController {
    
    override func loadView() {
        let startMainScreenView = StartMainScreenView(frame: CGRect.zero)
        self.view = startMainScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

