//
//  SecondViewController.swift
//  Calculator (5 in 1)
//
//  Created by Prits Ramani on 16/10/16.
//  Copyright © 2016 Prits Ramani. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var sc: UISegmentedControl!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var f1: UITextField!
    @IBOutlet weak var f2: UITextField!
    @IBOutlet weak var f3: UITextField!
    @IBOutlet weak var answ: UILabel!
    @IBOutlet weak var tsc: UISegmentedControl!
    @IBOutlet weak var tmview: UIView!
    @IBOutlet weak var tmansm: UILabel!
    @IBOutlet weak var ans: UILabel!
    @IBOutlet weak var tmansd: UILabel!
    @IBOutlet weak var anslabel: UILabel!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var viewans: UIView!
    @IBOutlet weak var periodview: UITextField!
    @IBOutlet weak var pv: UIView!
    @IBOutlet weak var principle: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var rateerror: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.f1.layer.borderWidth = 0.0
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        viewans.isHidden = true
        self.navigationController?.navigationBar.tintColor = UIColor.white;
        anslabel.isHidden = true
        answer.isHidden = true
        tmansm.isHidden = true
        tmansd.isHidden = true
        f3.isHidden = false
        pv.isHidden = true
        ans.isHidden = true
        tmview.isHidden = true
        f1.setBottomBorder(borderColor: UIColor.black)
        f2.setBottomBorder(borderColor: UIColor.black)
        f3.setBottomBorder(borderColor: UIColor.black)
        periodview.setBottomBorder(borderColor: UIColor.black)
    }
    override func viewDidLayoutSubviews() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func scaction(_ sender: AnyObject) {
        rateerror.isHidden = true
        switch sc.selectedSegmentIndex{
        case 0:
            label1.text="Principal"
            label2.text="Rate"
            label3.text="Time"
            f1.text = ""
            f2.text = ""
            f3.text = ""
            answ.text = ""
            tmview.isHidden = true
            tsc.isHidden = false
            viewans.isHidden = true
            anslabel.isHidden = true
            answer.isHidden = true
            ans.isHidden = true
            tmansm.isHidden = true
            tmansd.isHidden = true
            pv.isHidden = true
            f3.isHidden = false
            break
        case 1:
            label1.text="Interest"
            label2.text="Principal"
            label3.text="Time"
            f1.text = ""
            f2.text = ""
            f3.text = ""
            answ.text = ""
            ans.isHidden = true
            tmview.isHidden = true
            f3.isHidden = false
            tsc.isHidden = false
            viewans.isHidden = true
            anslabel.isHidden = true
            answer.isHidden = true
            tmansm.isHidden = true
            tmansd.isHidden = true
            pv.isHidden = true
            break
        case 2:
            label1.text="Principal"
            label2.text="Rate"
            label3.text="Interest"
            tsc.isHidden = true
            f1.text = ""
            f2.text = ""
            ans.isHidden = true
            f3.text = ""
            tmview.isHidden = true
            answ.text = ""
            periodview.text = ""
            viewans.isHidden = true
            anslabel.isHidden = true
            answer.isHidden = true
            tmansm.isHidden = true
            tmansd.isHidden = true
            f3.isHidden = true
            pv.isHidden = false
            break
        case 3:
            label1.text="Interest"
            label2.text="Rate"
            label3.text="Time"
            f1.text = ""
            f2.text = ""
            f3.text = ""
            tsc.isHidden = false
            answ.text = ""
            tmview.isHidden = true
            ans.isHidden = true
            periodview.text = ""
            f3.isHidden = false
            viewans.isHidden = true
            anslabel.isHidden = true
            answer.isHidden = true
            tmansm.isHidden = true
            tmansd.isHidden = true
            pv.isHidden = true
            break
        default:
            label1.text="Principal"
            label2.text="Rate"
            label3.text="Time"
            f1.text = ""
            f2.text = ""
            f3.text = ""
            ans.isHidden = true
            tmview.isHidden = true
            tsc.isHidden = false
            answ.text = ""
            f3.isHidden = false
            viewans.isHidden = true
            anslabel.isHidden = true
            answer.isHidden = true
            tmansm.isHidden = true
            tmansd.isHidden = true
            pv.isHidden = true
            break
        }
    }
    @IBAction func tscaction(_ sender: AnyObject) {
    }

    @IBAction func resetact(_ sender: AnyObject) {
        f1.text = ""
        f2.text = ""
        f3.text = ""
        periodview.text = ""
        viewans.isHidden = true
        anslabel.isHidden = true
        answer.isHidden = true
        ans.isHidden = true
        tmansm.isHidden = true
        tmansd.isHidden = true
        tmview.isHidden = true
        rateerror.text = ""
    }
    @IBOutlet weak var calculate: UIButton!
    @IBAction func calcaction(_ sender: AnyObject) {
        let s1 = Double(f1.text!)
        let s2 = Double(f2.text!)
        let s3 = Double(f3.text!)
        let pvv = Double(periodview.text!)
        
        
        switch sc.selectedSegmentIndex{
        case 0:
            label1.text="Principal"
            label2.text="Rate"
            label3.text="Time"
            anslabel.text = "Simple Interest"
            answer.isHidden = false
            tmansd.isHidden = true
            tmansm.isHidden = true
            tmview.isHidden = true
            let inmonths : Double = s3! / 12
            let indays : Double = s3! / 365
            if (s2?.isLessThanOrEqualTo(100))!{
                viewans.isHidden = false
                rateerror.text = ""
                ans.isHidden = false
                anslabel.isHidden = false
                switch tsc.selectedSegmentIndex {
                case 0:
                    
                    answ.text = "\(s1!*s2!*s3!/100)"
                    ans.text = "\(s1!*s2!*s3!/100)"
                    let sans = Double(answ.text!)
                    principle.text = "\(s1!)"
                    amount.text = "\(s1! + sans!)"
                    break
                    
                case 1:
                    answ.text = "\(s1!*s2!*inmonths/100)"
                    ans.text = "\(s1!*s2!*inmonths/100)"
                    principle.text = "\(s1!)"
                    amount.text = "\(s1! + Double(answ.text!)!)"
                    break
                    
                case 2:
                    answ.text = "\(s1!*s2!*indays/100)"
                    ans.text = "\(s1!*s2!*indays/100)"
                    principle.text = "\(s1!)"
                    amount.text = "\(s1! + Double(answ.text!)!)"
                    break
                default:
                    break
                }
            }else {
                viewans.isHidden = true
                ans.isHidden = true
                anslabel.isHidden = true
                rateerror.text = "Enter Between 1 to 100!"
                f2.text = ""
            }
            
            
            break
        case 1:
            label1.text="Interest"
            label2.text="Principal"
            label3.text="Time"
            viewans.isHidden = true
            anslabel.text = "Rate"
            answer.isHidden = false
            anslabel.isHidden = false
            tmansd.isHidden = true
            tmansm.isHidden = true
            tmview.isHidden = true
            ans.isHidden = false
            let inmonths : Double = s3! / 12
            let indays : Double = s3! / 365
            switch tsc.selectedSegmentIndex {
            case 0:
                ans.text = "\(100 * s1! / s2! * s3!)"
                break
                
            case 1:
                ans.text = "\(100 * s1! / s2! * inmonths)"
                break
                
            case 2:
                ans.text = "\(100 * s1! / s2! * indays)"
                break
            default:
                break
            }
            break
        case 2:
            label1.text="Principal"
            label2.text="Rate"
            label3.text="Interest"
            anslabel.text = "Time :"
            answer.isHidden = false
            anslabel.isHidden = true
            tmview.isHidden = false
            tmansd.isHidden = false
            tmansm.isHidden = false
            if (s2?.isLessThanOrEqualTo(100))!{
                rateerror.text = ""
                let years:Int = Int(Int(100 * pvv! / s2! * s1!))
                    answer.text = "\(years)"
                let months:Int = Int(100 * pvv! / s2! * s1! * 12)
                    tmansm.text = "\(months)"
                let days:Int = Int(100 * pvv! / s2! * s1! * 365)
                    tmansd.text = "\(days)"
                    viewans.isHidden = true
            }else{
                viewans.isHidden = true
                ans.isHidden = true
                anslabel.isHidden = true
                rateerror.text = "Enter Between 1 to 100!"
                f2.text = ""
                tmview.isHidden = true
            }
            break
        case 3:
            label1.text="Interest"
            label2.text="Rate"
            label3.text="Time"
            anslabel.text = "Principal"
            tsc.isHidden = false
            viewans.isHidden = true
            answer.isHidden = false
            anslabel.isHidden = false
            tmview.isHidden = true
            ans.isHidden = false
            tmansd.isHidden = true
            tmansm.isHidden = true
            let inmonths : Double = s3! / 12
            let indays : Double = s3! / 365
            if (s2?.isLessThanOrEqualTo(100))!
            {
                rateerror.text = ""
                switch tsc.selectedSegmentIndex
                {
                    case 0:
                        ans.text = "\(100 * s1! / s2! * s3!)"
                        break
                
                    case 1:
                        ans.text = "\(100 * s1! / s2! * inmonths)"
                        break
                
                    case 2:
                        ans.text = "\(100 * s1! / s2! * indays)"
                        break
                    default:
                        break
                    }
            }else{
                viewans.isHidden = true
                ans.isHidden = true
                anslabel.isHidden = true
                rateerror.text = "Enter Between 1 to 100!"
                f2.text = ""
                rateerror.isHidden = false
            }
            break
            
        default:
            label1.text="Principal"
            label2.text="Rate"
            label3.text="Time"
            tsc.isHidden = false
            tmview.isHidden = true
            answer.isHidden = false
            ans.isHidden = false
            anslabel.isHidden = false
            tmansd.isHidden = true
            tmansm.isHidden = true
            break
        }
    }
}
