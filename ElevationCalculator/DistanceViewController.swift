//
//  DistanceViewController.swift
//  ElevationCalculator
//
//  Created by Anum Qudsia on 20/09/2018.
//  Copyright © 2018 Anum Qudsia. All rights reserved.
//

import Foundation
import UIKit


class DistanceViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var distanceField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        distanceField.delegate = self
        distanceField.keyboardType = .decimalPad
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        distanceField.becomeFirstResponder()
    }
    
    @IBAction func onNextClick(_ sender: UIButton) {
        
        if distanceField.text != nil && distanceField.text!.count > 0 {
            if let num = NumberFormatter().number(from: distanceField.text!) {
                Calculator.shared.distance = Double(truncating: num)
                Calculator.shared.calculate()
                self.performSegue(withIdentifier: "GoToElevationViewController", sender: self)
            } else {
                showError()
            }
        } else {
            showError()
        }
    }
    
    func showError() {
        let alert = UIAlertController(title: "Error", message: "Please enter the distance", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
}
