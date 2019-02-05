//
//  Colour.swift
//  tutorialApplication
//
//  Created by Denislav Rofetov on 05/02/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import Foundation
import UIKit

class Colour{
    
    var _red:Float = 0.0
    var _green:Float = 0.0
    var _blue:Float = 0.0
    
    init(red:Float,green:Float,blue:Float) {
        _red = red
        _green = green
        _blue = blue
    }
    
    public func getColour() -> UIColor
    {
        let mixedColour = UIColor(
            red:CGFloat(_red/255.0),
            green:CGFloat(_green/255.0),
            blue:CGFloat(_blue/255.0),
            alpha:CGFloat(1.0))        
        return mixedColour
    }
    
    
}
