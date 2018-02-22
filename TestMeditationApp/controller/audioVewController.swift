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
import AudioToolbox

class audioViewController : UITableViewController{
    var audioPlayer : AVAudioPlayer?
    var audioFile = audioModel()
    var audioArray = ["FOUNDATION" , "HEALTH", "BRAVE" , "HAPPINESS" ,"WORK & PERFORMANCE", "STUDENT","SPORT"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 90.0
        //playAudioFile()
        
        
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        self.performSegue(withIdentifier: "rootTable", sender: self)
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
        
        
       //let audioPlayer = Bundle.main.url(forResource: "sample", withExtension: "m4a")
        playAudioFile()
    
       
    }
    
    func playAudioFile() {
        print("plau func call")
        guard let url = Bundle.main.url(forResource: "tone", withExtension: "m4a")
            else {
                print("return")
                return
               }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            // For iOS 11
            audioPlayer = try AVAudioPlayer(contentsOf: url)//, fileTypeHint: AVFileType.m4a.rawValue)
            
            guard let avPlayer = audioPlayer else { return }
            avPlayer.play()
            print("play success")
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
}
