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

final class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLighjView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLighjView.alpha = lightIsOff
        
//        redLightView.layer.cornerRadius = 75
//        yellowLightView.layer.cornerRadius = 75
//        greenLighjView.layer.cornerRadius = 75 в этом случае на разных устройствах будет меняться скругдение квадратов, по этому мы преминяем функцию ниже
        print("Размеры стороны, доступные в методе viewDidLoad: \(redLightView.frame.height)")
    }

    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLighjView.layer.cornerRadius = greenLighjView.frame.width / 2
        
        print("Размеры стороны, доступные в методе viewWillLayoutSubviews: \(redLightView.frame.height)")
    }
    
    @IBAction func startButtonDitTapped(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            greenLighjView.alpha  = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLightView.alpha = lightIsOff
            greenLighjView.alpha = lightIsOn
            currentLight = CurrentLight.red
        }
    
    }
    
}

