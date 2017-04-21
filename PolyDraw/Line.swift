//
//  Line.swift
//  PolyDraw
//
//  Created by Tardy, Alexander on 2017-04-21.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class Line:Shape {
    var deusex:Double
    var deusy:Double
    
    init(X:Double, Y:Double, newX:Double, newY:Double) {
        self.deusex = newX
        self.deusy = newY
        super.init(X: X, Y: Y)
    }
    
    override func draw(_ theContext: CGContext) {
        var path = UIBezierPath()
        path.move(to: CGPoint(x:self.X, y:self.Y))
        path.addLine(to: CGPoint(x:self.deusex,y:self.deusy))
        path.close()
        path.stroke()
            path.fill()
    }
}
