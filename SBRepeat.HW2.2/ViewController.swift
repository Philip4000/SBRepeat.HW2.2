//
//  ViewController.swift
//  SBRepeat.HW2.2
//
//  Created by Philip Noskov on 03.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorizedView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorizedView.layer.cornerRadius = 20
        
        redSlider.value = 0.2
        greenSlider.value = 0.5
        blueSlider.value = 1
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                green: CGFloat(greenSlider.value),
                                                blue: CGFloat(blueSlider.value),
                                                alpha: 1
        )
    }
    
    @IBAction func changeSliderValue(_ sender: UISlider) {
        
        switch sender.tag {
        case 1:
            redLabel.text = String(format: "%.2f",sender.value)
        case 2:
            greenLabel.text = String(format: "%.2f",sender.value)
        default:
            blueLabel.text = String(format: "%.2f",sender.value)
        }
        
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                green: CGFloat(greenSlider.value),
                                                blue: CGFloat(blueSlider.value),
                                                alpha: 1
        )
        
    }
}
