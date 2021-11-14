//
//   TextFieldMaxLength.swift
//  Calculator (5 in 1)
//
//  Created by Prits Ramani on 15/01/17.
//  Copyright © 2017 Prits Ramani. All rights reserved.
//

import UIKit

private var maxLengths = [UITextField: Int]()

extension UITextField {
    
    @IBInspectable var maxLength: Int {
        
        get {
            
            guard let length = maxLengths[self]
                else {
                    return Int.max
            }
            return length
        }
        set {
            maxLengths[self] = newValue
            addTarget(
                self,
                action: #selector(limitLength),
                for: UIControlEvents.editingChanged
            )
        }
    }
    func limitLength(textField: UITextField) {
        guard let prospectiveText = textField.text,
            prospectiveText.characters.count > maxLength
            else {
                return
        }
        
        let selection = selectedTextRange
        let maxCharIndex = prospectiveText.index(prospectiveText.startIndex, offsetBy: maxLength)
        text = prospectiveText.substring(to: maxCharIndex)
        selectedTextRange = selection
    }
}
