//
//  ElevationViewController.swift
//  ElevationCalculator
//
//  Created by Anum Qudsia on 20/09/2018.
//  Copyright © 2018 Anum Qudsia. All rights reserved.
//

import Foundation
import UIKit

class ElevationViewController: UIViewController {
    
    @IBOutlet weak var feetValue: UILabel!
    @IBOutlet weak var metersValue: UILabel!
    @IBOutlet weak var inclineValue: UILabel!
    @IBOutlet weak var distanceValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feetValue.text = String(Calculator.shared.feet)
        metersValue.text = String(Calculator.shared.meters)
        inclineValue.text = String(Calculator.shared.incline)
        distanceValue.text = String(Calculator.shared.distance)
        
    }
}
