//
//  DrawingView.swift
//  PolyDraw
//
//  Created by Chris Chadillon on 2017-03-02.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class DrawingView: UIView {
    
    var shapeType = 0
    var theShapes = [Shape]()
    var initialPoint: CGPoint!
    var isThereAPartialShape : Bool = false
    var thePartialShape : Shape!
    var settings = [Settings(),Settings(),Settings()]
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let possibleContext = UIGraphicsGetCurrentContext()
        
        if let theContext = possibleContext {
            theContext.setLineWidth(1)
            let colorSpace = CGColorSpaceCreateDeviceRGB()
            let components:[CGFloat] = [0.0, 2.0, 1.0, 1.0]
            let color = CGColor(colorSpace: colorSpace, components: components)
            theContext.setStrokeColor(color!)
            
            for aShape in self.theShapes {
                print(aShape.settings.lineWidth)
                theContext.setLineWidth(aShape.settings.lineWidth)
                //theContext.setFillColor(aShape.settings.defineColourfromindex(index: Int(aShape.settings.fillColour)))
                theContext.setStrokeColor(aShape.settings.defineColourfromindex(index: Int(aShape.settings.lineColour)))
                //theContext.setFillColor(CGColor(red: 1,green: 1,blue: 1,alpha: 0))
                //theContext.setStrokeColor(CGColor(red: 1,green: 1,blue: 1,alpha: 0))
                aShape.draw(theContext)
             
            }
            
            if self.isThereAPartialShape {
                theContext.setLineWidth(self.thePartialShape.settings.lineWidth)
                //theContext.setFillColor(self.thePartialShape.settings.defineColourfromindex(index: Int(aShape.settings.fillColour)))
                theContext.setStrokeColor(self.thePartialShape.settings.defineColourfromindex(index: Int(self.thePartialShape.settings.lineColour)))
                self.thePartialShape.draw(theContext)
            }
            
            theContext.strokePath()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        self.initialPoint = touch.location(in: self)
        self.isThereAPartialShape = true
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        let newPoint = touch.location(in: self)
        
        let topLeftPoint = CGPoint(x: self.initialPoint.x < newPoint.x ? self.initialPoint.x : newPoint.x,
                                   y: self.initialPoint.y < newPoint.y ? self.initialPoint.y : newPoint.y)
        
        if self.isThereAPartialShape {
            switch shapeType {
            case 0:
                self.thePartialShape = Rect(X: Double(topLeftPoint.x),
                                            Y: Double(topLeftPoint.y),
                                            theHeight: abs(Double(self.initialPoint.y-newPoint.y)),
                                            theWidth: abs(Double(self.initialPoint.x-newPoint.x)))
                self.thePartialShape.setSettings(s: settings[shapeType])
                break;
            case 1:
                self.thePartialShape = Oval(X: Double(topLeftPoint.x),
                                            Y: Double(topLeftPoint.y),
                                            theHeight: abs(Double(self.initialPoint.y-newPoint.y)),
                                            theWidth: abs(Double(self.initialPoint.x-newPoint.x)))
                self.thePartialShape.setSettings(s: settings[shapeType])
                break;
            case 2:
                self.thePartialShape = Line(X: Double(initialPoint.x),
                                            Y: Double(initialPoint.y),
                                            newX: Double(newPoint.x),
                                            newY: Double(newPoint.y))
                self.thePartialShape.setSettings(s: settings[shapeType])
                break;
            default:
                print("bad")
                break;
            }
            
        }
        self.setNeedsDisplay()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let theShape = self.thePartialShape {
            theShape.setSettings(s: settings[shapeType])
            self.theShapes.append(theShape)
            
        }
        self.isThereAPartialShape = false
    }
}





