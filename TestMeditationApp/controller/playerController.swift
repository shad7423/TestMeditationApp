//
//  playerController.swift
//  TestMeditationApp
//
//  Created by Shadab Khan on 3/1/18.
//  Copyright © 2018 Shadab Khan. All rights reserved.
//

import UIKit
import AVFoundation

class playerController: UIViewController {
    
    var playerPlay : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: 375 , height: 75)
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        let height: CGFloat = 50 //whatever height you want to add to the existing height
//        let bounds = self.navigationController!.navigationBar.bounds
//        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height + height)
//        
//    }

        
        
}

class TTNavigationBar: UINavigationBar {
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 55)
    }
    
}

