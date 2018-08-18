//
//  DistanceViewController.swift
//  IOSAppSample
//
//  Created by SE on 8/17/18.
//  Copyright © 2018 SE. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    @IBOutlet weak var meterTextFiled: UITextField!
    @IBOutlet weak var footTextField: UITextField!
    @IBOutlet weak var yardTextField: UITextField!
    @IBOutlet weak var kmTextField: UITextField!
    @IBOutlet weak var mileTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //these are using to hide keyboard
        self.meterTextFiled.delegate = self as? UITextFieldDelegate
        self.footTextField.delegate = self as? UITextFieldDelegate
        self.yardTextField.delegate = self as? UITextFieldDelegate
        self.kmTextField.delegate = self as? UITextFieldDelegate
        self.mileTextField.delegate = self as? UITextFieldDelegate
        
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
        if(meterTextFiled.text != nil && meterTextFiled.text?.isEmpty != true){   //Check nil value becase app crash
            let distance = Distance(input:Double(meterTextFiled.text!)!)         //Create a new object of Distance class
            footTextField.text = "\(distance.meterToFoot())"
            yardTextField.text = "\(distance.meterToYard())"
            kmTextField.text = "\(distance.meterToKm())"
            mileTextField.text = "\(distance.meterToMile())"
        }
    }
    
    
    @IBAction func onChangeFoot(_ sender: Any) {
        if(footTextField.text != nil && footTextField.text?.isEmpty != true){
            let distance = Distance(input:Double(footTextField.text!)!)
            meterTextFiled.text = "\(distance.FootToMeter())"
            yardTextField.text = "\(distance.FootToYard())"
            kmTextField.text = "\(distance.FootToKm())"
            mileTextField.text = "\(distance.FootToMile())"
        }
    }
    
    
    
    @IBAction func onChangeYard(_ sender: Any) {
        if(yardTextField.text != nil && yardTextField.text?.isEmpty != true){
            let distance = Distance(input:Double(yardTextField.text!)!)
            meterTextFiled.text = "\(distance.yardToMeter())"
            footTextField.text = "\(distance.yardToFoot())"
            kmTextField.text = "\(distance.yardToKm())"
            mileTextField.text = "\(distance.yardToMile())"
        }
    }
    
    
    @IBAction func onChangeKm(_ sender: Any) {
        if(kmTextField.text != nil && kmTextField.text?.isEmpty != true){
            let distance = Distance(input:Double(kmTextField.text!)!)
            meterTextFiled.text = "\(distance.kmToMeter())"
            footTextField.text = "\(distance.kmToFoot())"
            yardTextField.text = "\(distance.kmToYard())"
            mileTextField.text = "\(distance.kmToMile())"
        }
    }
    
    
    
    @IBAction func onChangeMile(_ sender: Any) {
        if(mileTextField.text != nil && mileTextField.text?.isEmpty != true){
            let distance = Distance(input:Double(mileTextField.text!)!)
            meterTextFiled.text = "\(distance.mileToMeter())"
            footTextField.text = "\(distance.mileToFoot())"
            yardTextField.text = "\(distance.mileToYard())"
            kmTextField.text = "\(distance.mileToKm())"
        }
    }
    
    
    
}
