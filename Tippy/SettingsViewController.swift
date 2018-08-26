//
//  SettingsViewController.swift
//  Tippy
//
//  Created by Owen Jones on 8/23/18.
//  Copyright © 2018 Owen Jones. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var TipValue1: UITextField!
    @IBOutlet weak var TipValue2: UITextField!
    @IBOutlet weak var TipValue3: UITextField!
    
    @IBAction func changeValues(_ sender: Any) {
        if TipValue1.text != "" && TipValue2.text != "" && TipValue3.text != "" && Int(TipValue1.text!) != nil  && Int(TipValue2.text!) != nil && Int(TipValue3.text!) != nil {
            performSegue(withIdentifier: "segue", sender: self)
        }
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Controller = segue.destination as! ViewController
        Controller.textValue1 = TipValue1.text!
        Controller.textValue2 = TipValue2.text!
        Controller.textValue3 = TipValue3.text!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
