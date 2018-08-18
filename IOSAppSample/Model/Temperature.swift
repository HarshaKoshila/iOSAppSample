//
//  Temperature.swift
//  IOSAppSample
//
//  Created by SE on 8/15/18.
//  Copyright © 2018 SE. All rights reserved.
//

import Foundation

class Temperature{
    
    var value :Double = 0
    
    init(input:Double) {
        self.value = input
    }
    
    func celToFar() -> Double {
        return (value*9/5)+32
    }
    func CelToKel() -> Double {
        return value+273.15
    }
    
    func FarToCel() -> Double {
        return (value-32)*5/9
    }
    func FarToKel() -> Double {
        return (5/9)*(value-32)+273.15
    }
    
    
    func KelToCel() -> Double{
        return value-273.15
    }
    func KelToFar() -> Double{
        return (9/5)*(value-273.15)+32
    }
}
