//
//  CustomTextField.swift
//  Unexpected Journey
//
//  Created by Jun Situ on 5/21/15.
//  Copyright (c) 2015 Tech Steam. All rights reserved.
//

import UIKit

class CustomTextFieldWithLogo: UITextField {
    
    //var leftpadding : CGFloat = 0.0

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        var borderColor : UIColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)
        self.layer.borderColor = borderColor.CGColor
        self.layer.borderWidth = 1
    }
    
    // This is how to add a left padding to the custom input box
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 50.0, 0)
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return self.textRectForBounds(bounds)
    }
    
}
