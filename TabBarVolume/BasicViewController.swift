//
//  BasicViewController.swift
//  TabBarVolume
//
//  Created by Michael Lema on 11/11/18.
//  Copyright © 2018 Michael Lema. All rights reserved.
//

import UIKit
import VideoSplashKit

class BasicViewController: VideoSplashViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        guard let path = Bundle.main.path(forResource: "Bird", ofType: "mp4") else { return }
        let url = NSURL.fileURL(withPath: path)
        self.videoFrame = view.frame
        self.fillMode = .resizeAspectFill
        self.alwaysRepeat = true
        self.sound = true
        self.alpha = 0.7
        self.backgroundColor = UIColor.black
        self.contentURL = url
        self.restartForeground = true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
  
}
