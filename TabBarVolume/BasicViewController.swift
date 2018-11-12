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
        view.backgroundColor = .black
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
