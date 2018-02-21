//
//  FirstViewController.swift
//  TestMeditationApp
//
//  Created by Shadab Khan on 2/19/18.
//  Copyright © 2018 Shadab Khan. All rights reserved.
//

import UIKit

class homeViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource{
    
    var meditationArray = ["FOUNDATION" , "HEALTH", "BRAVE" , "HAPPINESS" ,"WORK & PERFORMANCE", "STUDENT","SPORT"]
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
       
         meditationPicker.delegate = self
        meditationPicker.dataSource = self
        
    }

    
    @IBAction func selected(_ sender: UIButton) {
        
      self.performSegue(withIdentifier: "audioTable", sender: self)
    }
    
    @IBOutlet weak var meditationPicker: UIPickerView!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return meditationArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return meditationArray[row]
    }

}

