//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Admin on 05/07/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "no advice"
        
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
       let bmivalue = weight / (height * height)
        
        if bmivalue < 18.5 {
            bmi = BMI(value: bmivalue, advice: "Eat more pies", color: UIColor.blue)
    
        }   else if bmivalue < 24.9 {
            bmi = BMI(value: bmivalue, advice: "Fit as a fiddle", color: UIColor.green)
        
        } else {
            bmi = BMI(value: bmivalue, advice: "Eat less pies", color: UIColor.red)
            }
        }
 
        

    
}
