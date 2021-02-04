//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Mark Rachapoom on 4/2/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue: String = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        label.text = bmiValue
        
        view.addSubview(label)
        
    }
}
