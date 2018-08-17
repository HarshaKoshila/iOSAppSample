//
//  TemperatureVeiwController.swift
//  IOSAppSample
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import UIKit

class TemperatureVeiwController: UIViewController {

    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var farTextField: UITextField!
    @IBOutlet weak var kelvinTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func onChangeCelsiusTextFiled(_ sender: Any) {
        if(celsiusTextField.text != nil && celsiusTextField.text?.isEmpty != true){  //Check nil value becase app crash
            let temp = Temperature(input:Double(celsiusTextField.text!)!)    //Create a new object of Temperature class
            farTextField.text = "\(temp.celToFar())"
            kelvinTextField.text = "\(temp.CelToKel())"
        }
    }
    
    
    @IBAction func onChangeFarTextField(_ sender: Any) {
        if(farTextField.text != nil && farTextField.text?.isEmpty != true){
            let temp = Temperature(input:Double(farTextField.text!)!)
            celsiusTextField.text = "\(temp.FarToCel())"
            kelvinTextField.text = "\(temp.FarToKel())"
        }
    }
    
    
    @IBAction func onChangeKelvTextField(_ sender: Any) {
        if(kelvinTextField.text != nil && kelvinTextField.text?.isEmpty != true){
            let temp = Temperature(input:Double(kelvinTextField.text!)!)
            celsiusTextField.text = "\(temp.KelToCel())"
            farTextField.text = "\(temp.KelToFar())"
        }
    }
    
}
