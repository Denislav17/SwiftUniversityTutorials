//
//  ViewController.swift
//  tutorialApplication
//
//  Created by Denislav Rofetov on 05/02/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //sliders
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    //labels
    @IBOutlet weak var lblRed: UILabel!
    @IBOutlet weak var lblGreen: UILabel!
    @IBOutlet weak var lblBlue: UILabel!
    
    
    @IBOutlet weak var lblColourChange: UILabel!
    
    
    var colourMix: Colour?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        lblRed.text = "0"
        lblGreen.text = "0"
        lblBlue.text = "0"
        
        colourMix = Colour(red:0.0,green:0.0,blue:0.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RedValueChanged(_ sender: UISlider)
    {
    //updated lblRed
    lblRed.text = String(format: "%.0f", sliderRed.value)
    colourMix?._red = sliderRed.value
    lblColourChange.backgroundColor = colourMix?.getColour()
    
    }
    
    @IBAction func GreenValueChanged(_ sender: UISlider)
    {
        //updated lblGreen
        lblGreen.text = String(format: "%.0f", sliderGreen.value)
        colourMix?._green = sliderGreen.value
        lblColourChange.backgroundColor = colourMix?.getColour()
    }
    
    
    @IBAction func BlueValueChanged(_ sender: UISlider)
    {
        //updated lblBlue
        lblBlue.text = String(format: "%.0f", sliderBlue.value)
        colourMix?._blue = sliderBlue.value
        lblColourChange.backgroundColor = colourMix?.getColour()
    }
    
    
    
    
    
    
    


}

