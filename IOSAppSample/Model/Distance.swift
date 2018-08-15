//
//  Distance.swift
//  IOSAppSample
//
//  Created by SE on 8/15/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class Distance {
    
    var value :Double = 0
    
    init(input:Double) {
        self.value = input
    }
    
    //Covert meter to ....
    func meterToFoot() -> Double {
        return value*3.28084
    }
    func meterToYard() -> Double {
        return value*1.09361
    }
    func meterToKm() -> Double {
        return value*0.001
    }
    func meterToMile() -> Double {
        return value*0.000621371
    }
    
    //Covert Foot to....
    func FootToMeter() -> Double {
        return value*0.3048
    }
    func FootToYard() -> Double {
        return value*0.333333
    }
    func FootToKm() -> Double {
        return value*0.0003048
    }
    func FootToMile() -> Double {
        return value*0.000189394
    }
    
    
    //Covert Yard to....
    func yardToMeter() -> Double {
        return value*0.914400292608
    }
    func yardToFoot() -> Double {
        return value*3
    }
    func yardToKm() -> Double {
        return value*0.0009144
    }
    func yardToMile() -> Double {
        return value*0.000568182
    }
    
    //Covert Km to....
    func kmToMeter() -> Double {
        return value*1000
    }
    func kmToFoot() -> Double {
        return value*3280.84
    }
    func kmToYard() -> Double {
        return value*1093.61
    }
    func kmToMile() -> Double {
        return value*0.621371
    }
    
    
    //Covert Mile to....
    func mileToMeter() -> Double {
        return value*1609.34
    }
    func mileToFoot() -> Double {
        return value*5280
    }
    func mileToYard() -> Double {
        return value*1760
    }
    func mileToKm() -> Double {
        return value*1.60934
    }
}
