//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Aditya Virbhadra Vyavahare on 01/09/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var BMIValue: Float?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = String(format: "%.1f", BMIValue!)
        adviceLabel.text = advice!
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    */

}
