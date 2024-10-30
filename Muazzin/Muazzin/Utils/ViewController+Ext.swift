//
//  ViewController+Ext.swift
//  Muazzin
//
//  Created by Sarvar Boltaboyev on 30/10/24.
//

import Foundation
import UIKit

extension UIViewController {
    
    func setStatusBar() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithTransparentBackground() // to hide Navigation Bar Line also
        navBarAppearance.backgroundColor = appColor
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }
    
    func setTabBarImage(_ imageName: String, _ text: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: text, image: image, tag: 0)
    }
}
