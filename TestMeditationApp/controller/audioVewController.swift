//
//  homeVewController.swift
//  TestMeditationApp
//
//  Created by Shadab Khan on 2/20/18.
//  Copyright © 2018 Shadab Khan. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class audioViewController : UITableViewController{
    var audioPlay : AVAudioPlayer?
    var audioFile = audioModel()
    var audioArray = ["FOUNDATION" , "HEALTH", "BRAVE" , "HAPPINESS" ,"WORK & PERFORMANCE", "STUDENT","SPORT"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 100.0
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return audioArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = audioArray[indexPath.row]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
       // let audioUrl = Bundle.main.url(forResource: "sample", withExtension: "m4a")
    
       
    }
    
    
    
}
