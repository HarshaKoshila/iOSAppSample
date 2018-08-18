//
//  SpeedViewController.swift
//  IOSAppSample
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    @IBOutlet weak var meterTextField: UITextField!
    @IBOutlet weak var feetTextField: UITextField!
    @IBOutlet weak var kmTextField: UITextField!
    @IBOutlet weak var milesTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //these are using to hide keyboard
        self.meterTextField.delegate = self as? UITextFieldDelegate
        self.feetTextField.delegate = self as? UITextFieldDelegate
        self.kmTextField.delegate = self as? UITextFieldDelegate
        self.milesTextField.delegate = self as? UITextFieldDelegate
        
    }
    
    //Hide keyboard when user touches ouside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func onChangeMeter(_ sender: Any) {
        if(meterTextField.text != nil && meterTextField.text?.isEmpty != true){ //Check nil value becase app crash
            let speed = Speed(input:Double(meterTextField.text!)!)   //Create a new object of Speed class
            feetTextField.text = "\(speed.meterSToFootS())"
            kmTextField.text = "\(speed.meterSToKmS())"
            milesTextField.text = "\(speed.meterSToFoMileS())"
        }
    }
    
    
    @IBAction func onChangeFeet(_ sender: Any) {
        if(feetTextField.text != nil && feetTextField.text?.isEmpty != true){
            let speed = Speed(input:Double(feetTextField.text!)!)
            meterTextField.text = "\(speed.feetSToMeterS())"
            kmTextField.text = "\(speed.feetSToKmS())"
            milesTextField.text = "\(speed.feetSToMileS())"
        }
    }
    
    
    @IBAction func onChangeKm(_ sender: Any) {
        if(kmTextField.text != nil && kmTextField.text?.isEmpty != true){
            let speed = Speed(input:Double(kmTextField.text!)!)
            meterTextField.text = "\(speed.kmToMeter())"
            feetTextField.text = "\(speed.kmToFeet())"
            milesTextField.text = "\(speed.kmToMile())"
        }
    }
    
    
    @IBAction func onChangeMiles(_ sender: Any) {
        if(milesTextField.text != nil && milesTextField.text?.isEmpty != true){
            let speed = Speed(input:Double(milesTextField.text!)!)
            meterTextField.text = "\(speed.mileToMeter())"
            feetTextField.text = "\(speed.mileToFeet())"
            kmTextField.text = "\(speed.mileToKm())"
        }
    }
    
    
}
