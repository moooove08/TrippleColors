//
//  ViewController.swift
//  TrippleColors
//
//  Created by Vlad Kuzmenko on 05.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLights: UIView!
    @IBOutlet var yellowLights: UIView!
    @IBOutlet var greenLights: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLights.alpha = 0.3
        yellowLights.alpha = 0.3
        greenLights.alpha = 0.3
        redLights.layer.cornerRadius = 60
        yellowLights.layer.cornerRadius = 60
        greenLights.layer.cornerRadius = 60
       
    }
    var red = true
    var yellow = false
    
    @IBAction func pushhButtonStart(_ sender: Any) {
        startButton.setTitle("Next Light", for: .normal)
        
        
        if red == true {
            greenLights.alpha = 0.3
            redLights.alpha = 1
            red = false
            yellow = true
        } else if yellow == true {
            redLights.alpha = 0.3
            yellowLights.alpha = 1
            yellow = false
        } else  {
            yellowLights.alpha = 0.3
            greenLights.alpha = 1
            red = true
        }
    }
    

}

