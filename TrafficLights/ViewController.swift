//
//  ViewController.swift
//  TrafficLights
//
//  Created by Macbook on 20.03.2025.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redColorTrafficLights: UIView!
    
    @IBOutlet var yellowColorTrafficLights: UIView!
    
    @IBOutlet var greenColorTrafficLights: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
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
        onClikButton()
        sender.setTitle("NEXT", for: .normal)
        
    
    }
    
    private func onClikButton() {
        
        switch currentLight {
        case .red:
            greenColorTrafficLights.alpha  = 0.3
            redColorTrafficLights.alpha = 1
            currentLight = CurrentLight.yellow
            
        case .yellow:
            redColorTrafficLights.alpha = 0.3
            yellowColorTrafficLights.alpha = 1
            currentLight = CurrentLight.green
            
        case .green:
            yellowColorTrafficLights.alpha = 0.3
            greenColorTrafficLights.alpha = 1
            currentLight = CurrentLight.red
        }
    }
    
}

