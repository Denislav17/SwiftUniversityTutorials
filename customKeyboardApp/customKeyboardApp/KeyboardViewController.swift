//
//  ViewController.swift
//  customKeyboardApp
//
//  Created by Denislav Rofetov on 19/02/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class KeyboardViewController: UIViewController {
@IBOutlet weak var txtInput: UITextField!
@IBOutlet weak var txtResult: UITextField!
    var result = 0
    var number1 = 0
    var number2 = 0
    var intCol = [Int]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnTouched(_ sender: UIButton) {
        
        switch sender.titleLabel?.text {
            case "1"? :
            print("1 pressed")
            
            txtInput.text = txtInput.text! + "1"
            intCol.append(1)
            //
            case "2"? :
            print ("2 pressed")
            
            txtInput.text = txtInput.text! + "2"
            intCol.append(2)
            //
            case "3"? :
            print ("3 pressed")
            
            txtInput.text = txtInput.text! + "3"
            intCol.append(3)
            // //
            case "4"? :
            print("4 pressed")
            
            txtInput.text = txtInput.text! + "4"
            intCol.append(4)
            case "5"? :
            print ("5 pressed")
            
            txtInput.text = txtInput.text! + "5"
            intCol.append(5)
            case "6"? :
            print ("6 pressed")
            
            txtInput.text = txtInput.text! + "6"
            intCol.append(6)
            // //
            case "7"? :
            print("7 pressed")
            
            txtInput.text = txtInput.text! + "7"
            intCol.append(7)
            case "8"? :
            print ("8 pressed")
            
            txtInput.text = txtInput.text! + "8"
            intCol.append(8)
            case "9"? :
            print ("9 pressed")
            
            txtInput.text = txtInput.text! + "9"
            intCol.append(9)
        case "0"? :
            print ("0 pressed")
            
            txtInput.text = txtInput.text! + "0"
            intCol.append(0)
        case "DEL"? :
            print ("DELETE pressed")
            
        case "."? :
            print ("FLOAT pressed")
            txtInput.text = txtInput.text! + "."
        case "="? :
            result = addition(intCol)
            print(result)
            txtResult.text = String(result)
            
            
        case "C"?:
            txtInput.text = ""
            txtResult.text = ""
            intCol.removeAll()
        case "+"? :
            txtInput.text = " + "
        default:
            print("default case")
        }
        
    }
    func addition(_ intArray:[Int]) -> Int {
        var result = 0
        
        for i in intArray {
            //result = result + intArray[i]
            result += i
        }
        
        return result
        
    }
    func subtraction(num1:Int, num2: Int) -> Int{
        var result = num1 - num2
        return result
    }
    func multiply(num1: Int, num2: Int) -> Int {
        var result = num1 * num2
        return result
    }
    func divide(num1: Float, num2: Float) -> Float{
        var result = num1/num2
        return result
    }
}

