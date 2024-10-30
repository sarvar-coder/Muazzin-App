//
//  ViewController.swift
//  Muazzin
//
//  Created by Sarvar Boltaboyev on 29/10/24.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupTabBar()
    }
    
    private func setupViews() {
        let openingVC = OpeningVC()
        
        openingVC.setTabBarImage("house", "Home")
        
        let openingNC = UINavigationController(rootViewController: openingVC)
        
        openingNC.navigationBar.barTintColor = appColor
        hideNavigationBarLine(openingNC.navigationBar)
        
        let tabBarList = [openingNC]
        
        viewControllers = tabBarList
    }
    
    private func hideNavigationBarLine(_ navigationBar: UINavigationBar) {
        let img = UIImage()
        navigationBar.shadowImage = img
        navigationBar.setBackgroundImage(img, for: .default)
        navigationBar.isTranslucent = false
    }
    
    private func setupTabBar() {
        tabBar.tintColor = appColor
        tabBar.isTranslucent = false
    }
}
