//
//  ViewController.swift
//  tippy
//
//  Created by Brenda Cid on 4/6/19.
//  Copyright © 2019 Brenda Cid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var personField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var indTotalLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //        get the bill amount
        let bill = Double(billField.text!) ?? 0
        let people = Double(personField.text!) ?? 1
        let tipPercentages = [0.15, 0.2, 0.25]
        
        //        calculate tip and bill
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let total_per_person = total/people
        
        //        display tip and bill
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        indTotalLabel.text = String(format: "$%.2f", total_per_person)
        
    }
    

}

