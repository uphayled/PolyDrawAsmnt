//
//  Shape.swift
//  PolyDraw
//
//  Created by Chris Chadillon on 2017-03-02.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class Shape{
    var X:Double
    var Y:Double
    var settings:Settings
    
    init(X:Double, Y:Double,theSettings:Settings = Settings()) {
        self.X = X
        self.Y = Y
        self.settings = theSettings
    }
    
    
    func draw(_ theContext:CGContext){}
    
   
}





















