//
//  WeightViewController.swift
//  IOSAppSample
//
//  Created by SE on 8/13/18.
//  Copyright © 2018 SE. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    @IBOutlet weak var gramTextField: UITextField!
    @IBOutlet weak var kilogramTextField: UITextField!
    @IBOutlet weak var poundTextField: UITextField!
    @IBOutlet weak var ounceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func clear(){
        gramTextField.text = ""
        kilogramTextField.text = ""
        poundTextField.text = ""
        ounceTextField.text = ""
    }
  

    @IBAction func onChangeGramText(_ sender: Any) {
//        var weight = Weight(input:Double(gramTextField.text!)!)
//        kilogramTextField.text = "\(weight.gramToKg())"
//        poundTextField.text = "\(weight.gramToPound())"
//        ounceTextField.text = "\(weight.gramToOunce())"
        
        kilogramTextField.text = gramTextField.text
    }

    
    @IBAction func onChangeKgText(_ sender: Any) {
//        var weight = Weight(input:Double(gramTextField.text!)!)
//        gramTextField.text = "\(weight.KgToGram())"
//        poundTextField.text = "\(weight.KgToPond())"
//        ounceTextField.text = "\(weight.KgToOunce())"
        
        gramTextField.text = kilogramTextField.text
    }
    
    
    @IBAction func onChangePoundText(_ sender: Any) {
        let weight = Weight(input:Double(gramTextField.text!)!)
        kilogramTextField.text = "\(weight.poundToKg())"
        gramTextField.text = "\(weight.poundToGram())"
        ounceTextField.text = "\(weight.poundToOunce())"
    }

    
    @IBAction func onChangeOuncetext(_ sender: Any) {
        let weight = Weight(input:Double(gramTextField.text!)!)
        kilogramTextField.text = "\(weight.ounceToKg())"
        poundTextField.text = "\(weight.ounceToPound())"
        gramTextField.text = "\(weight.ounceToGram())"
    }

    
    
    
}
