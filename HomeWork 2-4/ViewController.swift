//
//  ViewController.swift
//  HomeWork 2-4
//
//  Created by Alexander on 18.11.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 20
        updateColor()
    }
    
    @IBAction func redSliderAction() {
        updateColor()
    }
    
    @IBAction func greenSliderAction() {
        updateColor()
    }
    
    @IBAction func blueSliderAction() {
        updateColor()
    }
    
    private func updateColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
        
        redLabel.text = String(format: "%.2f", CGFloat(redSlider.value))
        greenLabel.text = String(format: "%.2f", CGFloat(greenSlider.value))
        blueLabel.text = String(format: "%.2f", CGFloat(blueSlider.value))
    }
}



