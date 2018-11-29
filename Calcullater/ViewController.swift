//
//  ViewController.swift
//  Calcullater
//
//  Created by Taher Alsayeed on 28/11/2018.
//  Copyright © 2018 Taher Elsayeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var laNumberShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var newOperation = true
    func AddNumberToInput(number:String){
        var textNumber = String(laNumberShow.text!)
        if newOperation{
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        laNumberShow.text = textNumber
    }

    @IBAction func BuZero(_ sender: Any) {
        AddNumberToInput(number: "0")
    }
    @IBAction func BuDot(_ sender: Any) {
        AddNumberToInput(number: ".")
    }
    @IBAction func Bu1(_ sender: Any) {
        AddNumberToInput(number: "1")
    }
    @IBAction func Bu2(_ sender: Any) {
        AddNumberToInput(number: "2")
    }
    @IBAction func Bu3(_ sender: Any) {
        AddNumberToInput(number: "3")
    }
    @IBAction func Bu4(_ sender: Any) {
        AddNumberToInput(number: "4")
    }
    @IBAction func Bu5(_ sender: Any) {
        AddNumberToInput(number: "5")
    }
    @IBAction func Bu6(_ sender: Any) {
        AddNumberToInput(number: "6")
    }
    @IBAction func Bu7(_ sender: Any) {
        AddNumberToInput(number: "7")
    }
    @IBAction func Bu8(_ sender: Any) {
        AddNumberToInput(number: "8")
    }
    @IBAction func Bu9(_ sender: Any) {
        AddNumberToInput(number: "9")
    }
    var op = "+"
    var number1:Double?
    @IBAction func buMul(_ sender: Any) {
        op = "*"
        number1 = Double(laNumberShow.text!)
        newOperation = true
        
    }
    @IBAction func buEqual(_ sender: Any) {
        let number2 = Double(laNumberShow.text!)
        var result:Double?
        switch op {
        case  "*":
            result = number1! * number2!
        case "/":
            result = number1! / number2!
        case "-":
            result = number1! - number2!
        case "+":
            result = number1! + number2!
        default:
            result = 0.0
        }
        laNumberShow.text = String(result!)
        newOperation = true
    }
    @IBAction func buDiv(_ sender: Any) {
        op = "/"
        number1 = Double(laNumberShow.text!)
        newOperation = true
    }
    @IBAction func buSub(_ sender: Any) {
        op = "-"
        number1 = Double(laNumberShow.text!)
        newOperation = true
    }
    @IBAction func buAdd(_ sender: Any) {
        op = "+"
        number1 = Double(laNumberShow.text!)
        newOperation = true
    }
    @IBAction func buAc(_ sender: Any) {
        laNumberShow.text = "0"
        newOperation = true
    }
    @IBAction func buMinus(_ sender: Any) {
        var textNumber = String(laNumberShow.text!)
        textNumber = "-" + textNumber
        laNumberShow.text = textNumber
        
    }
    @IBAction func buPercent(_ sender: Any) {
        op = "%"
        var number1 = Double(laNumberShow.text!)
        number1 = number1! / 100.0
        laNumberShow.text = String(number1!)
        newOperation = true
    }
    
}


