//
//  AppDelegate.swift
//  MVVM_HarryPotter
//
//  Created by worker on 18.07.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let startViewController = StartViewController()
        self.window?.rootViewController = startViewController
        self.window?.makeKeyAndVisible()
        return true
    }
}

