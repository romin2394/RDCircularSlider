//
//  ViewController.swift
//  RDCircularSlider
//
//  Created by Romin Dhameliya on 9/8/20.
//  Copyright © 2020 Romin Dhameliya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, RDCircularSliderDelegate {
    
    

    @IBOutlet private weak var slider: RDCircularSlider!
    @IBOutlet private weak var valueLabel: UILabel!
    
    @IBOutlet weak var speedSlider: RDCircularSlider!
    @IBOutlet private weak var speedLabel: UILabel!
    
    @IBOutlet weak var markerSlider: RDCircularSlider!
    @IBOutlet weak var markerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.slider.delegate = self
        self.speedSlider.delegate = self
        self.markerSlider.delegate = self
        
        self.valueLabel.text = String(format: "%.1f", self.slider.currentValue)
        self.speedLabel.text = String(format: "%.1f", self.speedSlider.currentValue)
        self.markerLabel.text = String(format: "%.1f", self.markerSlider.currentValue)
    }
    
    func circularSlider(_ slider: RDCircularSlider, valueChangedTo value: Double, fromUser: Bool) {
        if slider == self.slider {
            self.valueLabel.text = String(format: "%.1f", value)
        } else if slider == self.markerSlider {
            self.markerLabel.text = String(format: "%.1f", value)
        } else {
            self.speedLabel.text = String(format: "%.1f", value)
        }
        
    }

}

