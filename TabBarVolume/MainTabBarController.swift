//
//  ViewController.swift
//  TabBarVolume
//
//  Created by Michael Lema on 11/11/18.
//  Copyright © 2018 Michael Lema. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
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
        tabBar.shadowImage = UIImage.navBarColor(.white)
   
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


