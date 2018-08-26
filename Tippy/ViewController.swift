//
//  ViewController.swift
//  Tippy
//
//  Created by Owen Jones on 8/23/18.
//  Copyright © 2018 Owen Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    var textValue1 = "18"
    var textValue2 = "20"
    var textValue3 = "25"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipControl.setTitle(textValue1 + "%", forSegmentAt: 0)
        tipControl.setTitle(textValue2 + "%", forSegmentAt: 1)
        tipControl.setTitle(textValue3 + "%", forSegmentAt: 2)
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
  
    
    @IBAction func calculateTip(_ sender: Any) {
        var value1 = Double(textValue1)
        value1 = value1!/100.00
        var value2 = Double(textValue2)
        value2 = value2!/100.00
        var value3 = Double(textValue3)
        value3 = value3!/100.00
        let tipPercentages = [value1!, value2!, value3!]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    
    
}

