//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var height: UISlider!
    @IBOutlet weak var weight: UISlider!
    
    // Tiny Labels
    @IBOutlet weak var showHeight: UILabel!
    @IBOutlet weak var showWeight: UILabel!
    
    var bmiValue: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        height.value = 1.5
        weight.value = 100
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        let strValue = String(format: "%.2f", sender.value)
        showHeight.text = strValue + "m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let strValue = String(format: "%.0f", sender.value)
        showWeight.text = strValue + "Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weightValue = Double(weight.value)
        let heightValue = Double(height.value)
        
        calculatorBrain.calculateBMI(weight: weightValue, height: heightValue)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

