//
//  AppBrain.swift
//  BMI Calculator
//
//  Created by Aditya Virbhadra Vyavahare on 01/09/22.
//

import Foundation
import UIKit

struct AppBrain {
    
    var bmi: Float?
    var heightRoundValue: Float?
    var weightRoundValue: Int?
    
    mutating func inputHeight(height: Float) {
        heightRoundValue = (round(100 * height)/100)
    }
    func getHeightLabel() -> String {
        return "\(heightRoundValue!)m"
    }
    mutating func inputWeight(weight: Float) {
        weightRoundValue = Int(weight)
    }
    func getWeightLabel() -> String {
        return "\(weightRoundValue!)Kg"
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = (weight/(pow(height, 2)))
    }
    func getBMIValue() -> Float {
        return bmi!
    }
    func getAdvice() -> String {
        if bmi!<18.5 {
            return "Eat more pies"
        } else if bmi!<24.9 {
            return "Fit as fiddle"
        } else {
            return "Workout a bit"
        }
    }
    func getColor() -> UIColor {
        if bmi!<18.5 {
            return .blue
        } else if bmi!<24.9 {
            return .green
        } else {
            return .red
        }
    }
}
