//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Adithyah Nair on 18/04/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiText: String = ""
    
    var bmiColor = UIColor()
    
    var bmiAdvice: String = ""

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiText
        
        view.backgroundColor = bmiColor
        
        adviceLabel.text = bmiAdvice
        
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: K.resToCalc, sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        segue.source.dismiss(animated: true, completion: nil)
        
    }
}
