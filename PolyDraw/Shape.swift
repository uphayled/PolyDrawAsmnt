//
//  Shape.swift
//  PolyDraw
//
//  Created by Chris Chadillon on 2017-03-02.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class Shape:Settings {
    var X:Double
    var Y:Double
    
    init(X:Double, Y:Double) {
        self.X = X
        self.Y = Y
        super.init()
    }
    
    
    func draw(_ theContext:CGContext){}
    
   
}





















