//
//  ThirdViewController.swift
//  TestMeditationApp
//
//  Created by Shadab Khan on 2/19/18.
//  Copyright © 2018 Shadab Khan. All rights reserved.
//

import UIKit
class accountViewController: UIViewController {
    
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var width1 = 100
    var collision: UICollisionBehavior!
    var firstContact = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped))
        view.addGestureRecognizer(tapGesture)
        let square = UIView(frame:CGRect(x:100, y:100, width:100, height:100))
        square.backgroundColor = .red // small red square
        self.view.addSubview(square) // add it to main view
        
        animator = UIDynamicAnimator(referenceView: view)
       gravity = UIGravityBehavior(items: [square])
        animator.addBehavior(gravity)
        
       
        
        let barrier = UIView(frame: CGRect(x: 0, y: 300, width: width1, height: 20))
        barrier.backgroundColor = UIColor.red
        view.addSubview(barrier)
        
        collision = UICollisionBehavior(items: [square])
        collision.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: barrier.frame))
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
        
    }
    
    @objc func viewTapped() {
        width1 += 10
        viewDidLoad()
    }
    
    
    
}
