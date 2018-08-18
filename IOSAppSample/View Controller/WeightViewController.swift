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
    @IBOutlet var mainScreen: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //these are using to hide keyboard
        self.gramTextField.delegate = self as? UITextFieldDelegate
        self.kilogramTextField.delegate = self as? UITextFieldDelegate
        self.poundTextField.delegate = self as? UITextFieldDelegate
        self.ounceTextField.delegate = self as? UITextFieldDelegate
        
    }
    
    //Hide keyboard when user touches ouside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func clear(){
        gramTextField.text = ""
        kilogramTextField.text = ""
        poundTextField.text = ""
        ounceTextField.text = ""
    }
    
    
    @IBAction func onChangeGramText(_ sender: Any) {
        if(gramTextField.text != nil && gramTextField.text?.isEmpty != true){ //Check nil value becase app crash
            let weight = Weight(input:Double(gramTextField.text!)!)   //Create a new object of Weight class
            kilogramTextField.text = "\(weight.gramToKg())"
            poundTextField.text = "\(weight.gramToPound())"
            ounceTextField.text = "\(weight.gramToOunce())"
        }
        
    }
    
    @IBAction func onChangeKilogram(_ sender: Any) {
        if(kilogramTextField.text != nil && kilogramTextField.text?.isEmpty != true){ //Check nil value becase app crash
            let weight = Weight(input:Double(kilogramTextField.text!)!)
            gramTextField.text = "\(weight.KgToGram())"
            poundTextField.text = "\(weight.KgToPond())"
            ounceTextField.text = "\(weight.KgToOunce())"
        }
    }
    
    
    
    @IBAction func onChangePoundText(_ sender: Any) {
        if(poundTextField.text != nil && poundTextField.text?.isEmpty != true){ //Check nil value becase app crash
            let weight = Weight(input:Double(poundTextField.text!)!)
            kilogramTextField.text = "\(weight.poundToKg())"
            gramTextField.text = "\(weight.poundToGram())"
            ounceTextField.text = "\(weight.poundToOunce())"
        }
    }
    
    
    @IBAction func onChangeOuncetext(_ sender: Any) {
        if(ounceTextField.text != nil && ounceTextField.text?.isEmpty != true){  //Check nil value becase app crash
            let weight = Weight(input:Double(ounceTextField.text!)!)
            kilogramTextField.text = "\(weight.ounceToKg())"
            poundTextField.text = "\(weight.ounceToPound())"
            gramTextField.text = "\(weight.ounceToGram())"
        }
    }
    
    
    
}
