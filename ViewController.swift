//
//  ViewController.swift
//  testApplication
//
//  Created by Denislav Rofetov on 28/02/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnIncrement: UIButton!
    @IBOutlet weak var btnDecrement: UIButton!
    @IBOutlet weak var btnMultiply4: UIButton!
    @IBOutlet weak var txtValue: UITextField!  
    @IBOutlet weak var btnOpenSecondPage: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtValue.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func DisplayResult(_number: Int){
        txtValue.text = String(_number)
    }
    
    @IBAction func btnIncremetValue(_ sender: Any) {
        
        var txtInteger = Int(txtValue.text!)
        txtInteger = txtInteger! + 1
        DisplayResult(_number: txtInteger!)
    }
    
    @IBAction func btnDecrementValue(_ sender: Any) {
        
        var txtInteger = Int(txtValue.text!)
        
         txtInteger = txtInteger! - 1
         DisplayResult(_number: txtInteger!)
        
    }
    @IBAction func btnMultiplyby4(_ sender: Any) {
        
        var txtInteger = Int(txtValue.text!)
        txtInteger = txtInteger! * 4
        DisplayResult(_number: txtInteger!)
    }
    
    @IBAction func btnOpenSecondPage_Clicked(_ sender: Any) {
        
    }
    
    
}

