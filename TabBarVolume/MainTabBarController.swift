//
//  ViewController.swift
//  TabBarVolume
//
//  Created by Michael Lema on 11/11/18.
//  Copyright © 2018 Michael Lema. All rights reserved.
//

import UIKit
import SubtleVolume

class MainTabBarController: UITabBarController {
    
    let volume = SubtleVolume(style: .rounded)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        volume.barTintColor = UIColor(red:0.80, green:0.26, blue:0.34, alpha:1.00)
        volume.barBackgroundColor = .clear
        
        volume.animation = .fadeIn
        volume.padding = CGSize(width: 0, height: 2.0)
        volume.delegate = self
        
        self.view.addSubview(volume)
        NotificationCenter.default.addObserver(volume, selector: #selector(SubtleVolume.resume), name: UIApplication.didBecomeActiveNotification, object: nil)
        setupViewControllers()
        
        volume.anchor(top: tabBar.topAnchor, bottom: nil, left: tabBar.leftAnchor, right: tabBar.rightAnchor, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 0, height: 2)

    }
    
    func setupViewControllers() {
        
        // Home
        let homeNavController = templateNavController(unselectedImage: #imageLiteral(resourceName: "home_unselected"), selectedImage: #imageLiteral(resourceName: "home_selected"))
        // Plus
        let plusNavController = templateNavController(unselectedImage: #imageLiteral(resourceName: "plus_unselected"), selectedImage: #imageLiteral(resourceName: "plus_unselected"))
        
        // Search
        let searchNavController = templateNavController(unselectedImage: #imageLiteral(resourceName: "search_unselected"), selectedImage: #imageLiteral(resourceName: "search_selected"))
        
        
        
        tabBar.tintColor = .white
        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage.navBarColor(UIColor.init(white: 0.5, alpha: 1))

        viewControllers = [homeNavController, plusNavController, searchNavController]
    }
    
    
    fileprivate func templateNavController(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: BasicViewController = BasicViewController()) -> UINavigationController {
        let viewController = rootViewController
        let NavController = UINavigationController(rootViewController: viewController)
        NavController.setNavigationBarHidden(true, animated: false)
        NavController.tabBarItem.image = unselectedImage
        NavController.tabBarItem.selectedImage = selectedImage
        return NavController
    }
}


extension MainTabBarController: SubtleVolumeDelegate {
    
}

