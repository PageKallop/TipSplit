//
//  ViewController.swift
//  TipSplit
//
//  Created by Page Kallop on 12/6/20.
//

import UIKit

class ViewController: UIViewController {

    var tipCalculated = "0.00"
    
    
    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var fifteenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
   
    @IBOutlet weak var stepperButton: UIStepper!
    
    var tip = 0.10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //stepper properties
        stepperButton.wraps = true
        stepperButton.autorepeat = true
        stepperButton.maximumValue = 10
        stepperButton.minimumValue = 2
         
        
        // percent button styled
        tenPctButton.layer.cornerRadius = 5
        tenPctButton.layer.borderWidth = 2.0
        tenPctButton.layer.borderColor = UIColor.black.cgColor
        tenPctButton.layer.backgroundColor = UIColor.white.cgColor
        
        fifteenPctButton.layer.cornerRadius = 5
        fifteenPctButton.layer.borderWidth = 2.0
        fifteenPctButton.layer.borderColor = UIColor.black.cgColor
        fifteenPctButton.layer.backgroundColor = UIColor.white.cgColor
        
        twentyPctButton.layer.cornerRadius = 5 
        twentyPctButton.layer.borderWidth = 2.0
        twentyPctButton.layer.borderColor = UIColor.black.cgColor
        twentyPctButton.layer.backgroundColor = UIColor.white.cgColor
    }
    
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        
        // switching between selected perecentage
       
                    tenPctButton.isSelected = false
                    fifteenPctButton.isSelected = false
                    twentyPctButton.isSelected = false
                    
                    sender.isSelected = true
      
        
        
        
        // Changing button percent to decimal
        let buttonTitle = sender.currentTitle!
        let buttonWithoutPercent = String(buttonTitle.dropLast())
        let buttonTitleChoice = Double(buttonWithoutPercent)!
        
        tip = buttonTitleChoice / 100
       
        // Dismiss keyboard
        billTextField.endEditing(true)
        
    }
    
    
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        
        splitNumberLabel.text = Int(sender.value).description
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        // setting amounts and number of people to split into doubles
        
        let billAmount = Double(billTextField.text!)
        
        let peopleToSplit = Double(splitNumberLabel.text!)
        
        // calculating tip amount between number of people
        
        let tipAmount = billAmount! * tip
        
        let tipSplit = tipAmount / peopleToSplit!
        
        // casting tip amount into a String
        
        tipCalculated = String(format: "%.2f", tipSplit)
        
        self.performSegue(withIdentifier: "showTotal", sender: self)
        
        print(tipSplit)
        
    }
    // Segue to resaults screen
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTotal" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.tipCalculated = tipCalculated
        }
    }
    
}

