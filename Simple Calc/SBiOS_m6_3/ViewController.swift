//
//  ViewController.swift
//  SBiOS_m6_3
//
//  Created by watchingcarsgoby on 31.10.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var firstOperand: UITextField!

    @IBOutlet var mathAction: UITextField!

    @IBOutlet var secondOperand: UITextField!

    @IBAction func calculate(_: Any) {
        let a: Int? = Int(firstOperand.text!)
        let b: Int? = Int(secondOperand.text!)
        let action = mathAction.text!
        var res: Int = 0

        if a == nil || b == nil {
            result.text = "Invalid input"
        } else {
            switch action {
            case "+":
                res = a! + b!
                result.text = "\(String(describing: res))"
            case "-":
                res = a! - b!
                result.text = "\(String(describing: res))"
            case "*":
                res = a! * b!
                result.text = "\(String(describing: res))"
            case "/":
                res = a! / b!
                result.text = "\(String(describing: res))"
            default:
                result.text = "Invalid input"
            }
        }
    }

    @IBOutlet var result: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
