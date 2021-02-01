//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Mohsen Dehabg 2020.

import UIKit

class ViewController: UIViewController {

    // Connecting UI to Code for Futre changes.
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // رفرنس دادن به یک عنصر رابط کاربری
    }

    @IBAction func roleButton(_ sender: UIButton) {
        print("Button got tapped!")
        let diceImage2Number = Int.random(in: 0...5 )
        // Generating a Random number
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        diceImageView1.image = diceArray.randomElement()
        
        diceImageView2.image = diceArray[diceImage2Number]
        
        //Showing the image with The random number Generatef in Array. I did it with two ways.
    }
    
}

 
