//
//  ResultsViewCellViewController.swift
//  TipSplit
//
//  Created by Page Kallop on 12/6/20.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var tipCalculated: String?
    var tip: Int = 0
    var split: Int = 0

   
    @IBOutlet weak var tipTotal: UILabel!
    
    @IBOutlet weak var settingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // updating tip total and setting label

        tipTotal.text = tipCalculated
        settingLabel.text = "Split between \(split) people with \(tip)% tip"
    }
    
        // goes back to rootvc 
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
        
    }

    

}
