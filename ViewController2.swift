//
//  ViewController2.swift
//  testApplication
//
//  Created by Denislav Rofetov on 28/02/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

var integer: Int = Int()

class ViewController2: UIViewController {

    @IBOutlet weak var btnDisplay: UIButton!
    @IBOutlet weak var btnErase: UIButton!
    @IBOutlet weak var btnExit: UIButton!
    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var lblOutput: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func btnDisplay_Click(_ sender: Any) {
        lblOutput.text = String(integer)
    }
    
    @IBAction func btnErase_Click(_ sender: Any) {
        txtInput.text! = ""
        lblOutput.text! = ""
        
    }

}
