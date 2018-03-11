//
//  ViewController.swift
//  AVAudioPlayerDemo
//
//  Created by nguyencuong on 3/11/18.
//  Copyright © 2018 nguyencuong. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var showImageVideo: UIView!
    var  myAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let myFilePathString = Bundle.main.path(forResource: "video", ofType: "mp4")
        if let myFilePathString = myFilePathString
        {
            let myFilePathURL = URL(fileURLWithPath: myFilePathString)
            do{
                try myAudioPlayer = AVAudioPlayer(contentsOf: myFilePathURL)
                
                myAudioPlayer.play()
            }catch{
                print("err")
            }
        }
    }
    
    @IBOutlet weak var myVolumeController: UISlider!
    
    @IBAction func stopAudio(sender: AnyObject) {
        
        myAudioPlayer.stop()
        myAudioPlayer.currentTime = 0
        
    }
    
    @IBAction func pauseAudio(sender: AnyObject) {
        
        myAudioPlayer.pause()
        
    }
    
    @IBAction func playAudio(sender: AnyObject) {
        
        myAudioPlayer.play()
        
    }
    
    @IBAction func volumeControl(sender: AnyObject) {
        
        myAudioPlayer.volume=myVolumeController.value
        
    }
    
    
}

