//
//  ViewController.swift
//  TrafficLights
//
//  Created by Macbook on 20.03.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColorTrafficLights: UIView!
    
    @IBOutlet var yellowColorTrafficLights: UIView!
    
    @IBOutlet var greenColorTrafficLights: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorTrafficLights.alpha = 0.3
        yellowColorTrafficLights.alpha = 0.3
        greenColorTrafficLights.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
        redColorTrafficLights.layer.cornerRadius = 75
        yellowColorTrafficLights.layer.cornerRadius = 75
        greenColorTrafficLights.layer.cornerRadius = 75
    }

    @IBAction func startButtonDitTapped(_ sender: UIButton) {
        
        redColorTrafficLights.alpha = 1
        sender.setTitle("NEXT", for: .normal)
        
    
    }
    
}

