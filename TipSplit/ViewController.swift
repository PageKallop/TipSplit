//
//  ViewController.swift
//  TipSplit
//
//  Created by Page Kallop on 12/6/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var fifteenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
   
    @IBOutlet weak var stepperButton: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        
        //stepper properties
        stepperButton.wraps = true
        stepperButton.autorepeat = true
        stepperButton.maximumValue = 5
         
        
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
        
        let billAmount = billTextField.text 
        let percentagePicked = sender.currentTitle!
        
        // switching between selected perecentage
        switch sender {
                case tenPctButton:
                    tenPctButton.isSelected = true
                    fifteenPctButton.isSelected = false
                    twentyPctButton.isSelected = false
                case fifteenPctButton:
                    fifteenPctButton.isSelected = true
                    tenPctButton.isSelected = false
                    twentyPctButton.isSelected = false
                case twentyPctButton:
                    twentyPctButton.isSelected = true
                    fifteenPctButton.isSelected = false
                    tenPctButton.isSelected = false
                default:
                    print("Error")
                }
        billTextField.endEditing(true)
        
    }
    
    
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = Int(sender.value).description
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        print(billTextField.text)
    }
    
}

