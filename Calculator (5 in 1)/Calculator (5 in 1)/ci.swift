//
//  ci.swift
//  Calculator (5 in 1)
//
//  Created by Prits Ramani on 29/10/16.
//  Copyright © 2016 Prits Ramani. All rights reserved.
//

import UIKit
import Foundation



class ci: UIViewController {

    
    @IBOutlet weak var ci1: UITextField!
    @IBOutlet weak var ci2: UITextField!
    @IBOutlet weak var periodview: UIView!
    @IBOutlet weak var ci3: UITextField!
    @IBOutlet weak var timeview: UITextField!
    @IBOutlet weak var tabswitch: UISegmentedControl!
    @IBOutlet weak var tswitch: UISegmentedControl!
    @IBOutlet weak var f1: UILabel!
    @IBOutlet weak var f2: UILabel!
    @IBOutlet weak var f3: UILabel!
    @IBOutlet weak var anslabel: UILabel!
    @IBOutlet weak var ansswitch: UISegmentedControl!
    @IBOutlet weak var civiewamount: UILabel!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var civiewans: UILabel!
    @IBOutlet weak var civiewprincipal: UILabel!
    @IBOutlet weak var tableansview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.white;
        
        ci1.setBottomBorder(borderColor: UIColor.black)
        ci2.setBottomBorder(borderColor: UIColor.black)
        ci3.setBottomBorder(borderColor: UIColor.black)
        timeview.setBottomBorder(borderColor: UIColor.black)
        periodview.isHidden = true
        ansswitch.isHidden = true
        anslabel.isHidden = true
        ci2.maxLength = 3
        tableansview.isHidden = true
        answer.isHidden = true
    }
    @IBAction func answeraction(_ sender: Any) {
        
    }
    @IBAction func reset(_ sender: AnyObject) {
        switch tabswitch.selectedSegmentIndex {
        case 0:
            f1.text = "Principal"
            f2.text = "Rate"
            f3.text = "Time"
            ci2.maxLength = 3
            ci1.text = ""
            ci2.text = ""
            ci3.text = ""
            anslabel.text = "Interest Compounded"
            answer.isHidden = true
            periodview.isHidden = true
            ansswitch.isHidden = true
            anslabel.isHidden = true
            tableansview.isHidden = true
            break
            
        case 1:
            answer.isHidden = true
            f1.text = "Interest"
            f2.text = "Time"
            f3.text = "Principal"
            ci2.maxLength=10
            ci1.text = ""
            ci2.text = ""
            ci3.text = ""
            tableansview.isHidden = true
            anslabel.text = "Interest Compounded"
            periodview.isHidden = true
            ansswitch.isHidden = true
            anslabel.isHidden = true
            break
            
        case 2:
            f1.text = "Interest"
            f2.text = "Rate"
            f3.text = "Principal"
            ci2.maxLength = 3
            ci1.text = ""
            answer.isHidden = true
            ci2.text = ""
            ci3.text = ""
            periodview.isHidden = false
            tableansview.isHidden = true
            ansswitch.isHidden = true
            anslabel.isHidden = true
            break
            
        case 3:
            f1.text = "Interest"
            f2.text = "Rate"
            f3.text = "Time"
            ci2.maxLength = 3
            ci1.text = ""
            ci2.text = ""
            ci3.text = ""
            answer.isHidden = true
            periodview.isHidden = true
            ansswitch.isHidden = true
            tableansview.isHidden = true
            anslabel.isHidden = true
            break
            
        default:
            f1.text = "Principal"
            f2.text = "Rate"
            f3.text = "Time"
            ci1.text = ""
            ci2.text = ""
            ci3.text = ""
            answer.isHidden = true
            ci2.maxLength = 3
            periodview.isHidden = true
            ansswitch.isHidden = true
            anslabel.isHidden = true
            tableansview.isHidden = true
            break
        }
    }
    @IBAction func calcaction(_ sender: AnyObject) {
        let s1 = Double(ci1.text!)
        let s2 = Double(ci2.text!)
        let s3 = Double(ci3.text!)
        
        switch tabswitch.selectedSegmentIndex {
        case 0:
            f1.text = "Principal"
            f2.text = "Rate"
            f3.text = "Time"
            anslabel.text = "Interest Compounded"
            periodview.isHidden = true
            ansswitch.isHidden = false
            anslabel.isHidden = false
            answer.isHidden = false
            tableansview.isHidden = false
            
            switch ansswitch.selectedSegmentIndex {
            case 0:
                switch tswitch.selectedSegmentIndex {
                case 0:
                    let cians = s1!*(pow((100+s2!)/100, s3!))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\(cians-s1!)"
                    answer.text = "\(cians-s1!)"
                    break
                case 1:
                    let cians = s1!*(pow((100+s2!)/100, (s3!/12)))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\(cians-s1!)"
                    answer.text = "\(cians-s1!)"
                    break
                    
                case 2:
                    let cians = s1!*(pow((100+s2!)/100, (s3!/365)))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\(cians-s1!)"
                    answer.text = "\(cians-s1!)"
                    break
                    
                default:
                    let cians = s1!*(pow((100+s2!)/100, s3!))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\(cians-s1!)"
                    answer.text = "\(cians-s1!)"
                    break
                }
            case 1:
                switch tswitch.selectedSegmentIndex {
                case 0:
                    let cians = s1!*(pow((200+s2!)/200, 2*s3!))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\((cians-s1!))"
                    answer.text = "\(cians-s1!)"
                    break
                case 1:
                    let cians = s1!*(pow((200+s2!)/200, 2*(s3!/12)))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\(cians-s1!)"
                    answer.text = "\(cians-s1!)"
                    break
                    
                case 2:
                    let cians = s1!*(pow((200+s2!)/200, 2*(s3!/360)))
                    civiewamount.text = "\(cians)"
                    civiewprincipal.text = "\(s1!)"
                    civiewans.text = "\(cians-s1!)"
                    answer.text = "\(cians-s1!)"
                    break
                    
                default:
                    let cians = s1!*(pow((200+s2!)/200, 2*s3!))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\((cians-s1!))"
                    answer.text = "\(cians-s1!)"
                    break
                }
                break
                
            case 2:
                switch tswitch.selectedSegmentIndex {
                case 0:
                    let cians = s1!*(pow((400+s2!)/400, 4*s3!))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\((cians-s1!))"
                    answer.text = "\(cians-s1!)"
                    break
                case 1:
                    let cians = s1!*(pow((400+s2!)/400, 4*s3!))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\((cians-s1!))"
                    answer.text = "\(cians-s1!)"
                    break
                    
                case 2:
                    let cians = s1!*(pow((400+s2!)/400, 4*s3!))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\((cians-s1!))"
                    answer.text = "\(cians-s1!)"
                    break
                default:
                    let cians = s1!*(pow((400+s2!)/400, 4*s3!))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\((cians-s1!))"
                    answer.text = "\(cians-s1!)"
                    break
                }
                break
                
                
            default:
                switch tswitch.selectedSegmentIndex {
                case 0:
                    let cians = s1!*(pow((100+s2!)/100, s3!))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\(cians-s1!)"
                    answer.text = "\(cians-s1!)"
                    break
                case 1:
                    let cians = s1!*(pow((100+s2!)/100, (s3!/12)))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\(cians-s1!)"
                    answer.text = "\(cians-s1!)"
                    break
                    
                case 2:
                    let cians = s1!*(pow((100+s2!)/100, (s3!/365)))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\(cians-s1!)"
                    answer.text = "\(cians-s1!)"
                    break
                    
                default:
                    let cians = s1!*(pow((100+s2!)/100, s3!))
                    civiewprincipal.text = "\(s1!)"
                    civiewamount.text = "\(cians)"
                    civiewans.text = "\(cians-s1!)"
                    answer.text = "\(cians-s1!)"
                    break
                }
                break
            }
            break
        
        case 1:
            f1.text = "Interest"
            f2.text = "Principal"
            f3.text = "Time"
            anslabel.text = "Rate"
            periodview.isHidden = true
            ansswitch.isHidden = true
            anslabel.isHidden = false
            tableansview.isHidden = true
            answer.isHidden = false
            switch ansswitch.selectedSegmentIndex{
            case 0:
                let amount = Double(s1! + s2!)
                let r = Double(amount*100/s2! - pow(100,s3!))
                let R = Double(pow(r, s3!))
                answer.text = "\(R)"
                break
            case 1:
                break
            case 2:
                break
            default:
                break
            }
            break
            
        case 2:
            f1.text = "Interest"
            f2.text = "Rate"
            f3.text = "Principal"
            ci1.text = ""
            ci2.text = ""
            ci3.text = ""
            periodview.isHidden = true
            ansswitch.isHidden = true
            anslabel.isHidden = true
            tableansview.isHidden = true
            answer.isHidden = false
            break
            
        case 3:
            f1.text = "Interest"
            f2.text = "Rate"
            f3.text = "Time"
            ci1.text = ""
            ci2.text = ""
            ci3.text = ""
            periodview.isHidden = true
            ansswitch.isHidden = true
            anslabel.isHidden = true
            tableansview.isHidden = true
            answer.isHidden = false
            break
            
        default:
            f1.text = "Principal"
            f2.text = "Rate"
            f3.text = "Time"
            ci1.text = ""
            ci2.text = ""
            ci3.text = ""
            periodview.isHidden = true
            ansswitch.isHidden = true
            anslabel.isHidden = true
            tableansview.isHidden = true
            answer.isHidden = false
            break
        }
    }
    @IBAction func ansswitchaction(_ sender: AnyObject) {
  //      switch ansswitch.selectedSegmentIndex{

//        }
    }
    @IBAction func tsaction(_ sender: AnyObject) {
        switch tabswitch.selectedSegmentIndex {
        case 0:
            f1.text = "Principal"
            f2.text = "Rate"
            f3.text = "Time"
            ci2.maxLength = 3
            ci1.text = ""
            ci2.text = ""
            ci3.text = ""
            anslabel.text = "Interest Compounded"
            periodview.isHidden = true
            ansswitch.isHidden = true
            anslabel.isHidden = true
            tableansview.isHidden = true
            answer.isHidden = true
            break
            
        case 1:
            f1.text = "Interest"
            f2.text = "Principal"
            f3.text = "Time"
            ci2.maxLength=10
            ci1.text = ""
            ci2.text = ""
            ci3.text = ""
            anslabel.text = "Interest Compounded"
            periodview.isHidden = true
            ansswitch.isHidden = true
            anslabel.isHidden = true
            tableansview.isHidden = true
            answer.isHidden = true
            break
            
        case 2:
            f1.text = "Interest"
            f2.text = "Rate"
            f3.text = "Principal"
            ci2.maxLength = 3
            ci1.text = ""
            ci2.text = ""
            ci3.text = ""
            anslabel.text = "Interest Compounded"
            periodview.isHidden = false
            ansswitch.isHidden = true
            anslabel.isHidden = true
            tableansview.isHidden = true
            answer.isHidden = true
            break
            
        case 3:
            f1.text = "Interest"
            f2.text = "Rate"
            f3.text = "Time"
            ci2.maxLength = 3
            ci1.text = ""
            ci2.text = ""
            ci3.text = ""
            anslabel.text = "Interest Compounded"
            periodview.isHidden = true
            ansswitch.isHidden = true
            anslabel.isHidden = true
            tableansview.isHidden = true
            answer.isHidden = true
            break
            
        default:
            f1.text = "Principal"
            f2.text = "Rate"
            f3.text = "Time"
            ci1.text = ""
            ci2.text = ""
            ci3.text = ""
            anslabel.text = "Interest Compounded"
            ci2.maxLength = 3
            periodview.isHidden = true
            ansswitch.isHidden = true
            anslabel.isHidden = true
            tableansview.isHidden = true
            answer.isHidden = true
            break
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
}
