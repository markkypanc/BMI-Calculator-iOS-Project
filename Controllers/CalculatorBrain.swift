//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mark Rachapoom on 4/2/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Double, height: Double) {
        
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue {
        case ...18.5:
            bmi = BMI(value: Float(bmiValue), advice: "Eat more snacks!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        case 18.5...24.9:
            bmi = BMI(value: Float(bmiValue), advice: "Fit as the fiddles!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        default:
            bmi = BMI(value: Float(bmiValue), advice: "Eat less snacks!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "The bmi struct is nil..."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
}
