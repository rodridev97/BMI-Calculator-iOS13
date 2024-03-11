//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by RodriDev on 10/3/24.
//  Copyright © 2024 RodriDev. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float)  {
        let bmiValue = weight / pow(2, height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.systemBlue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.systemRed)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Not advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
}
