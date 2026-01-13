//
//  ViewController.swift
//  BMI-iOS
//
//  Created by Tardes on 13/1/26.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightStepper: UIStepper!
    
    @IBOutlet weak var resultLaval: UILabel!
    
    
    var weight:Float = 60.0
    var height:Float = 170.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
     
        
    }
    @IBAction func onWeightChanged(_ sender: Any) {
        weight = weightSlider.value
        weightLabel.text = "\(Int(weight)) kg"
        
    
    }
    @IBAction func onHeightChanged(_ sender: Any) {
        height = Float(heightStepper.value)
        heightLabel.text = "\(Int(height)) cm"
    }

    

    @IBAction func CalculateBMI(_ sender: Any) {
        
        let height = Float(heightStepper.value / 100.0)
        
        let bmi = weight / (height * height)
        
        resultLaval.text = "Tu BMI es \(Int(bmi))"
    }
    

}

