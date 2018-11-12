//
//  BasicViewController.swift
//  TabBarVolume
//
//  Created by Michael Lema on 11/11/18.
//  Copyright © 2018 Michael Lema. All rights reserved.
//

import UIKit

class BasicViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.08, green:0.14, blue:0.24, alpha:1.00)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
