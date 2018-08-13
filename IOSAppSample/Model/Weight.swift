  
import Foundation

  
  class Weight {
    
    var value :Double = 0
    
    init(input:Double) {
        self.value = input
    }
    
    
    
    func gramToKg() -> Double {
        return value*0.001
    }
    func gramToPound() -> Double {
        return value*0.00220462
    }
    func gramToOunce() -> Double {
        return value*0.035274
    }
    
    
    
    func KgToGram() -> Double {
        return value*1000
    }
    func KgToPond() -> Double {
        return value*2.20462
    }
    func KgToOunce() -> Double {
        return value*35.274
    }
    
    
    
    
    func poundToGram() -> Double {
        return value*453.592
    }
    func poundToKg() -> Double {
        return value*0.453592
    }
    func poundToOunce() -> Double {
        return value*16
    }
    
    
    
    func ounceToGram() -> Double {
        return value*28.3495
    }
    func ounceToKg() -> Double {
        return value*0.0283495
    }
    func ounceToPound() -> Double {
        return value*0.0625
    }
    
    
  }
