//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateBMIViewController: UIViewController {
    
    var bmi = BMICalculator()
    
    var height: Double?
    
    var weight: Double?
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //MARK: - heightSlider @IBAction
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        let heightInString = String(format: "%0.2f", sender.value)
        
        height = bmi.getHeight(heightInString)
        
        heightLabel.text = "\(heightInString)m"
        
    }
    
    //MARK: - weightSlider @IBAction
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        let weightInString = String(format: "%0.0f", sender.value)
        
        weight = bmi.getWeight(weightInString)
        
        weightLabel.text = "\(weightInString)Kg"
    
    }
    
    //MARK: - calculatePressed @IBAction

    @IBAction func calculatePressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: K.calcToRes, sender: self)
        
    }
    
    //MARK: - prepareForSegue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == K.calcToRes {
            
            let destinationVC = segue.destination as! ResultViewController
            
            if let heightValue = height, let weightValue = weight {
                bmi.calculateBMI(heightValue, weightValue)
            }
            
            destinationVC.bmiText = bmi.getBMI()
            
            destinationVC.bmiColor = bmi.getBMIColor()
            
            destinationVC.bmiAdvice = bmi.getBMIAdvice()
        }
        
    }
    
}

