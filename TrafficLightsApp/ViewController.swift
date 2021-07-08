//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by Sergey on 07.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLightVeiw: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var trafficLightFlag = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightVeiw.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        startButton.setTitle("Start", for: .normal)
        startButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        redLightVeiw.layer.cornerRadius = redLightVeiw.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
    }

    @IBAction func nextButtonPressed() {
        switch trafficLightFlag {
        case 1:
            yellowLightView.alpha = 1
            redLightVeiw.alpha = 0.3
            trafficLightFlag = 2
        case 2:
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
            trafficLightFlag = 3
        case 3:
            redLightVeiw.alpha = 1
            greenLightView.alpha = 0.3
            trafficLightFlag = 1
        default:
            redLightVeiw.alpha = 1
            startButton.setTitle("Next", for: .normal)
            trafficLightFlag = 1
        }
    }
    
}

