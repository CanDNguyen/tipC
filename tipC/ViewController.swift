//
//  ViewController.swift
//  tipC
//
//  Created by Can Nguyen on 1/3/20.
//  Copyright © 2020 Can D. Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("can dep trai")
        view.endEditing(true)
    }
    
    @IBAction func calTip(_ sender: Any) {
        // get bill
        let bill = Double(billField.text!) ?? 0
        
        // cal tip and total
        let tipPercent = [0.1,0.18,0.2]
        
        let tip = bill*tipPercent[tipControl.selectedSegmentIndex]
        let total = tip + bill
        
        // update tip and total
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
    
}

