//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Aditya Virbhadra Vyavahare on 01/09/22.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    //var BMI: Float?
    var appBrain = AppBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        appBrain.inputHeight(height: sender.value)
        heightLabel.text = appBrain.getHeightLabel()
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        appBrain.inputWeight(weight: sender.value)
        weightLabel.text = appBrain.getWeightLabel()
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height: Float = heightSliderOutlet.value
        let weight: Float = weightSliderOutlet.value
        
        appBrain.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "goToResult", sender: CalculateViewController.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.BMIValue = appBrain.getBMIValue()
            destinationVC.advice = appBrain.getAdvice()
            destinationVC.color = appBrain.getColor()
        }
    }
}

