//
//  ViewController.swift
//  TipSplit
//
//  Created by Page Kallop on 12/6/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UILabel!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var fifteenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
    
}

