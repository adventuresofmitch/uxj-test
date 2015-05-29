//
//  CustomTextField.swift
//  Unexpected Journey
//
//  Created by Jun Situ on 5/21/15.
//  Copyright (c) 2015 Tech Steam. All rights reserved.
//

import UIKit

class CustomTextFieldWithLogo: UITextField {

    var leftPadding : CGFloat = 50.0
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        var borderColor : UIColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)
        var bottomBorder = CALayer()
        
        // This add the bottom border (only) to the textfield
        bottomBorder.frame = CGRectMake(0.0, self.frame.size.height - 1, self.frame.size.width, 1.0);
        bottomBorder.backgroundColor = borderColor.CGColor
        self.layer.addSublayer(bottomBorder)
    }
    
    // This is how to add a left padding to the custom input box
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, leftPadding, 0)
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return self.textRectForBounds(bounds)
    }
    
}
