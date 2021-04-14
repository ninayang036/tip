//
//  ViewController.swift
//  tip
//
//  Created by Yang Nina on 2021/4/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var peopleTextField: UITextField!
    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var personTextField: UITextField!
    @IBOutlet weak var resultBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totalTextField.isEnabled = false
        personTextField.isEnabled = false
    }

   
    @IBAction func resultTip(_ sender: UIButton) {
        self.view.endEditing(true)
        //如果金額等於零的話
        if (moneyTextField.text == ""){
            totalTextField.placeholder = "0"
            personTextField.placeholder = "0"
        }
        else{
            //如果有輸入金額,但小費跟人數都沒輸入時
            if (tipTextField.text == ""){
                tipTextField.text = "\(0)"
            }
            if (peopleTextField.text == ""){
                peopleTextField.text = "\(1)"
            }
            //小費
            let tips = Double(moneyTextField.text!)! * Double(tipTextField.text!)! / 100
            
            //總額label(金額＋小費)
            let total = Double(moneyTextField.text!)! + tips
            
            //平分總金額
            let share = total / Double(peopleTextField.text!)!
            
            totalTextField.text = "\(total)"
            personTextField.text = "\(share)"
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        moneyTextField.text = ""
        moneyTextField.placeholder = "0"
        tipTextField.text = ""
        tipTextField.placeholder = "0"
        peopleTextField.text = ""
        peopleTextField.placeholder = "0"
        totalTextField.text = ""
        totalTextField.placeholder = "0"
        personTextField.text = ""
        personTextField.placeholder = "0"
    }
}

