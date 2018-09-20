//
//  ViewController.swift
//  ElevationCalculator
//
//  Created by Anum Qudsia on 20/09/2018.
//  Copyright © 2018 Anum Qudsia. All rights reserved.
//

import UIKit

class InclineViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inclineField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inclineField.delegate = self
        inclineField.keyboardType = .decimalPad
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        inclineField.becomeFirstResponder()
    }
    
    @IBAction func onNextClick(_ sender: UIButton) {
        
        if inclineField.text != nil && inclineField.text!.count > 0 {
            Calculator.shared.incline = Double(inclineField.text!)
            self.performSegue(withIdentifier: "GoToDistanceViewController", sender: self)
        } else {

            let alert = UIAlertController(title: "Error", message: "Please enter the incline", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }

    }

}
