//
//  SecondViewController.swift
//  TestMeditationApp
//
//  Created by Shadab Khan on 2/19/18.
//  Copyright © 2018 Shadab Khan. All rights reserved.
//

import UIKit

class discoverViewController: UIViewController {
    
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v = UIView(frame:CGRect(x:0, y:0, width:450, height:100))
        v.backgroundColor = .red // small red square
        self.view.addSubview(v) // add it to main view
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [v])
        animator.addBehavior(gravity)
        
        
    }
    



}

