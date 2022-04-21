//
//  BMICalculator.swift
//  BMI Calculator
//
//  Created by Adithyah Nair on 18/04/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct BMICalculator {
    
    var bmi: BMI?
    
    //MARK: - calculateBMI()
    
    mutating func calculateBMI(_ height: Double, _ weight: Double) {
        
        let Bmi = weight/(height*height)
        
        if Bmi < 18.5 {
            
            bmi = BMI(bmiValue: Bmi, screenColor: .blue , advice: "Eat something")
            
        } else if Bmi >= 18.5 && Bmi < 25 {
            
            bmi = BMI(bmiValue: Bmi, screenColor: .systemGreen , advice: "You are fit and healthy.")
            
        } else {
            
            bmi = BMI(bmiValue: Bmi, screenColor: .red , advice: "You Overweight.")
            
        }
        
    }
    
    //MARK: - getBMI
    
    func getBMI() -> String {
        
        let bmiValueRoundedInString = String(format: "%0.2f", bmi?.bmiValue ?? 44.44)
        
        return bmiValueRoundedInString
        
    }
    
    //MARK: - getBMIColor
    
    func getBMIColor() -> UIColor {
        
        return bmi?.screenColor ?? .red
        
    }
    
    //MARK: - getBMIAdvice
    
    func getBMIAdvice() -> String {
        
        return bmi?.advice ?? "Your overweight."
        
    }
    
    //MARK: - getWeight
    
    func getWeight(_ weight: String) -> Double? {
        
        return Double(weight)
        
    }
    
    //MARK: - getHeight
    
    func getHeight(_ height: String) -> Double? {
        
        return Double(height)
        
    }
}
