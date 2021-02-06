//
//  SceneDelegate.swift
//  Xylophone
//
//  Created by Mohsen Dehbag 2021/2/6
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPress(_ sender: UIButton) {
        playSound(input: sender.currentTitle!)
        sender.alpha = 0.5 //Reduce the transparency
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {  //Give the button 4 miliSeconds To turn to full transparency
            sender.alpha = 1.0
              }

    }
    
    func playSound(input: String) {
    
        let url = Bundle.main.url(forResource: input, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
