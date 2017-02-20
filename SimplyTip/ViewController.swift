//
//  ViewController.swift
//  SimplyTip
//
//  Created by Linda on 2/19/17.
//  Copyright © 2017 Linda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var taxControl: UISegmentedControl!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    

    @IBAction func calculateTaxNTip(_ sender: AnyObject) {
        
        let taxPercent = [0.07, 0.08, 0.09]
        let tipPercent = [0.15, 0.18, 0.20, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tax = bill * taxPercent[taxControl.selectedSegmentIndex]
        let tip = (bill + tax) * tipPercent[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        taxLabel.text = String(format: "$%.2f", tax)
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    
    
    }



}

