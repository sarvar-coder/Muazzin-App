//
//  AppDelegate.swift
//  Muazzin
//
//  Created by Sarvar Boltaboyev on 29/10/24.
//

import UIKit

let appColor: UIColor = .systemCyan

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    let mainVC = MainViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .systemBackground
        window?.makeKeyAndVisible()
       
        
        window?.rootViewController = mainVC
        
        return true
    }
}

