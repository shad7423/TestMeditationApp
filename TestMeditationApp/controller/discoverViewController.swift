//
//  SecondViewController.swift
//  TestMeditationApp
//
//  Created by Shadab Khan on 2/19/18.
//  Copyright © 2018 Shadab Khan. All rights reserved.
//

import UIKit

class discoverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v = UIView(frame:CGRect(x:0, y:0, width:50, height:50))
        v.backgroundColor = .red // small red square
        self.view.addSubview(v) // add it to main view
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

