//
//  ResultsViewCellViewController.swift
//  TipSplit
//
//  Created by Page Kallop on 12/6/20.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var tipCalculated: String? 

   
    @IBOutlet weak var tipTotal: UILabel!
    
    @IBOutlet weak var settingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tipTotal.text = tipCalculated
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)  
    }
    

}
