//
//  ViewController.swift
//  Calculator (5 in 1)
//
//  Created by Prits Ramani on 16/10/16.
//  Copyright © 2016 Prits Ramani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var si: UIButton!
    @IBOutlet weak var ci: UIButton!
    @IBOutlet weak var cagp: UIButton!
    @IBOutlet weak var sip: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        si.layer.borderColor = UIColor(red:115, green:0, blue:0, alpha:1.0).cgColor
        ci.layer.borderColor = UIColor(red:115, green:0, blue:0, alpha:1.0).cgColor
        cagp.layer.borderColor = UIColor(red:115, green:0, blue:0, alpha:1.0).cgColor
        sip.layer.borderColor = UIColor(red:115, green:0, blue:0, alpha:1.0).cgColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

