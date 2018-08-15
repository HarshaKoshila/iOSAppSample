//
//  Speed.swift
//  IOSAppSample
//
//  Created by SE on 8/15/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class Speed{
    
    var value :Double = 0
    
    init(input:Double) {
        self.value = input
    }
    
    //Covert m/s to ....
    func meterSToFootS() -> Double {
        return value*196.85
    }
    func meterSToKmS() -> Double {
        return value*3.6
    }
    func meterSToFoMileS() -> Double {
        return value*2.23694
    }
    
    
    //Covert feet/m to ....
    func feetSToMeterS() -> Double {
        return value*0.00508
    }
    func feetSToKmS() -> Double {
        return value*0.018288
    }
    func feetSToMileS() -> Double {
        return value*0.0113636
    }
    
    //Covert km/hour to ....
    func kmToMeter() -> Double {
        return value*0.277778
    }
    func kmToFeet() -> Double {
        return value*54.6807
    }
    func kmToMile() -> Double {
        return value*0.621371
    }
    
    
    //Covert miles/hour to ....
    func mileToMeter() -> Double {
        return value*0.44704
    }
    func mileToFeet() -> Double {
        return value*88
    }
    func mileToKm() -> Double {
        return value*1.60934
    }
    
}
