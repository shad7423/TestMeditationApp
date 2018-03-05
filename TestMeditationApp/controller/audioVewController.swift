//
//  homeVewController.swift
//  TestMeditationApp
//
//  Created by Shadab Khan on 2/20/18.
//  Copyright © 2018 Shadab Khan. All rights reserved.
//

import UIKit
import AVFoundation


class audioViewController : UITableViewController,AVAudioPlayerDelegate{
    var audioPlayer : AVAudioPlayer = AVAudioPlayer()
    var audioFile = audioModel()
    var audioArray = ["FOUNDATION" , "HEALTH", "BRAVE" , "HAPPINESS" ,"WORK & PERFORMANCE", "STUDENT","SPORT"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 140.0
        playAudioFile()
        
        
    }
    
   // @IBAction func nextToAudioPlayer(_ sender: Any) {
    //    self.performSegue(withIdentifier: "avPlayer", sender: self)
   // }
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
        
        if audioPlayer.isPlaying {
            audioPlayer.stop()
        }else {
            audioPlayer.play()
        }
        
    
       
    }
    
    func playAudioFile() {
        print("play func call")
        guard let url = Bundle.main.url(forResource: "tone", withExtension: "m4a")
            else {
                print("return")
                return
               }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.prepareToPlay()
            //audioPlayer.play()
            print("play success")
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
}
