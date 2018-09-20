//
//  CustomButton.swift
//  ElevationCalculator
//
//  Created by Anum Qudsia on 20/09/2018.
//  Copyright © 2018 Anum Qudsia. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
open class CustomButton: UIButton {
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}


@IBDesignable
open class CustomLabel: UILabel {
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}
