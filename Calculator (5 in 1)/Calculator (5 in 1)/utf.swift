//
//  utf.swift
//  Calculator (5 in 1)
//
//  Created by Prits Ramani on 18/10/16.
//  Copyright © 2016 Prits Ramani. All rights reserved.
//
import Foundation
import UIKit

extension UITextField
{
    func setBottomBorder(borderColor: UIColor)
    {
        self.borderStyle = UITextField.BorderStyle.none;
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.darkText.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
}

