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
    @IBOutlet weak var resultDescriptionLaval: UILabel!

    var weight: Float = 60.0
    var height: Float = 170.0

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

        resultLaval.text = String(format: "%.2f", bmi)
        
        var resultText = ""
        var resultColor = UIColor.black
        
        switch bmi {
            
        case 0..<18.5:
            //Bajo peso
            resultText = "Bajo peso"
          resultColor = UIColor.bmiUnderweight
        case 18.5..<25:
            //Peso Normal
            resultText = "Peso Normal"
            resultColor = UIColor.bmiNormalweight
            case 25..<30:
            //Sobrepeso
            resultDescriptionLaval.text = "Sobrepeso"
            resultColor = UIColor.bmiOverweight
        case 30..<40:
            //Obesidad
            resultText = "Obesidad"
            resultColor = UIColor.bmiObesity
        default:
            //obesidad extrema
           resultText = "Obesidad extrema"
            resultColor = UIColor.bmiExtremeWeight
        
            
        }
        resultDescriptionLaval.text = resultText
        resultLaval.textColor = resultColor
        resultDescriptionLaval.textColor = resultColor
        
    }

}
