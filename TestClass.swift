//
//  TestClass.swift
//  testApplication
//
//  Created by Denislav Rofetov on 28/02/2019.
//  Copyright © 2019 Denislav Rofetov. All rights reserved.
//

import Foundation

class TestClass {
    
    var number : Int?
    
    init(){
        
    }   
    
    init(_number: Int)
    {
        self.number = _number
    }
    
    public func getNumber() -> Int{
        
        return (self.number)!
    }
    
}
