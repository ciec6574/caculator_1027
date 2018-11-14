//
//  ViewController.swift
//  caculator_1027
//
//  Created by s20171106574 on 2018/10/27.
//  Copyright © 2018 s20171106574. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp:Double = 0
    var temp2:Double = 0
    var operatorFlag = 0
    var operatorFlag2 = 0

    @IBOutlet var result: UITextField!
    @IBAction func button1(_ sender: Any) {
        result.text = result.text! + "1"
    }
    @IBAction func button2(_ sender: Any) {
        result.text = result.text! + "2"
    }
    @IBAction func button3(_ sender: Any) {
        result.text = result.text! + "3"
    }
    @IBAction func button4(_ sender: Any) {
        result.text = result.text! + "4"
    }
    @IBAction func button5(_ sender: Any) {
        result.text = result.text! + "5"
    }
    @IBAction func button6(_ sender: Any) {
        result.text = result.text! + "6"
    }
    @IBAction func button7(_ sender: Any) {
        result.text = result.text! + "7"
    }
    @IBAction func button8(_ sender: Any) {
        result.text = result.text! + "8"
    }
    @IBAction func button9(_ sender: Any) {
        result.text = result.text! + "9"
    }
    @IBAction func button0(_ sender: Any) {
        result.text = result.text! + "0"
    }
    @IBAction func button00(_ sender: Any) {
        result.text = result.text! + "00"
    }
    @IBAction func buttonAC(_ sender: Any) {
        result.text = ""
    }
    @IBAction func dot(_ sender: Any) {
        result.text = result.text! + "."
    }
    @IBAction func buttonAdd(_ sender: Any) {
        temp = Double(result.text!)!
        if operatorFlag2 == 0
        {
            temp2 = temp
        }
        result.text = ""
        operatorFlag = 1
        if operatorFlag2 == 0
        {
        }
        else
        {
            temp2 = temp + temp2
        }
        operatorFlag2 = operatorFlag2 + 1
    }
    @IBAction func buttonSub(_ sender: Any) {
        temp = Double(result.text!)!
        if operatorFlag2 == 0
        {
            temp2 = temp
        }
        result.text = ""
        operatorFlag = 2
        if operatorFlag2 == 0
        {
        }
        else
        {
            temp2 = temp2 - temp
        }
        operatorFlag2 = operatorFlag2 + 1
    }
    @IBAction func buttonDivi(_ sender: Any) {
        temp = Double(result.text!)!
        if operatorFlag2 == 0
        {
            temp2 = temp
        }
        result.text = ""
        operatorFlag = 3
        if operatorFlag2 == 0
        {
        }
        else
        {
            temp2 = temp2 / temp
        }
        operatorFlag2 = operatorFlag2 + 1
    }
    @IBAction func buttonMult(_ sender: Any) {
        temp = Double(result.text!)!
        if operatorFlag2 == 0
        {
            temp2 = temp
        }
        result.text = ""
        operatorFlag = 4
        if operatorFlag2 == 0
        {
        }
        else
        {
            temp2 = temp * temp2
        }
        operatorFlag2 = operatorFlag2 + 1
    }
    @IBAction func buttonSqrt(_ sender: Any) {
        temp = Double(result.text!)!
        temp = sqrt(temp)
        result.text = "\(temp)"
    }
    @IBAction func buttonResult(_ sender: Any) {
        switch operatorFlag {
        case 1:
        if operatorFlag2 == 1
        {
            temp = temp + Double(result.text!)!
            result.text = "\(temp)"
            operatorFlag2 = 0
        }
        else
        {
            temp2 = temp2 + Double(result.text!)!
            result.text = "\(temp2)"
            operatorFlag2 = 0
        }
        case 2:
        if operatorFlag2 == 1
        {
            temp = temp - Double(result.text!)!
            result.text = "\(temp)"
            operatorFlag2 = 0
        }
        else
        {
            temp2 = temp2 - Double(result.text!)!
            result.text = "\(temp2)"
            operatorFlag2 = 0
        }
        case 3:
        if operatorFlag2 == 0
        {
            temp = temp / Double(result.text!)!
            result.text = "\(temp)"
            operatorFlag2 = 0
        }
        else
        {
            temp2 = temp2 / Double(result.text!)!
            result.text = "\(temp2)"
            operatorFlag2 = 0
        }
        case 4:
        if operatorFlag2 == 0
        {
            temp = temp * Double(result.text!)!
            result.text = "\(temp)"
            operatorFlag2 = 0
        }
        else
        {
            temp2 = temp2 * Double(result.text!)!
            result.text = "\(temp2)"
            operatorFlag2 = 0
            }
        default: break
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

