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
        let navigationVC = UINavigationController(rootViewController: startViewController)
        self.window?.rootViewController = navigationVC
        self.window?.makeKeyAndVisible()
        return true
    }
}

