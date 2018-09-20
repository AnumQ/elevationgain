//
//  Calculator.swift
//  ElevationCalculator
//
//  Created by Anum Qudsia on 20/09/2018.
//  Copyright © 2018 Anum Qudsia. All rights reserved.
//

import Foundation
import UIKit

class Calculator {
    
    static let shared = Calculator()
    
    var incline: Double!
    var distance: Double!
    
    var feet: Double!
    var meters: Double!
    
    private init() {
        incline = nil
        distance = nil
    }
    
    func calculate() {
        let miles  = incline * 0.621371192
        let elevationGain = (incline/100)*miles
        let feet = elevationGain*5280
        let meters = feet / 3.281
        
        self.feet = Double(round(100*feet)/100)
        self.meters = Double(round(100*meters)/100)
        
        
    }
    
}
