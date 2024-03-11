//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by RodriDev on 10/3/24.
//  Copyright © 2024 RodriDev. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultBMILabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundPanel: UIImageView!
    
    var bmiValue: String? = "0.0"
    var advice: String? = ""
    var color: UIColor? = UIColor.gray
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultBMILabel.text = "\(bmiValue ?? "0.0")"
        adviceLabel.text = advice
        backgroundPanel.backgroundColor = color
    }
    

    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
