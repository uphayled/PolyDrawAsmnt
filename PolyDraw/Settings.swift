//
//  Settings.swift
//  PolyDraw
//
//  Created by Admin on 2017-04-26.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//
import UIKit
import Foundation

class Settings {
    var lineWidth:CGFloat
    var lineColour:CGFloat
    var filled:Bool
    var fillColour:CGFloat
   
    
    init (linewidth:CGFloat = 0,linecolour:CGFloat = 0,fillEd:Bool = true,fillcolour:CGFloat = 0) {
        self.lineWidth = linewidth
        self.lineColour = linecolour
        self.filled = fillEd
        self.fillColour = fillcolour
    }
    
    
    func defineColourfromindex(index:Int) -> CGColor{
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        var  components:[CGFloat]
        switch (index){
        case 0: components = [0.0, 2.0, 1.0, 1.0]
            break
        case 1: components = [0.0, 2.0, 1.0, 1.0]
            break
        case 2: components = [0.0, 2.0, 1.0, 1.0]
            break
        case 3: components = [0.0, 2.0, 1.0, 1.0]
            break
        case 4: components = [0.0, 2.0, 1.0, 1.0]
            break
        case 5: components = [0.0, 2.0, 1.0, 1.0]
            break
        default:components = [0.0, 2.0, 1.0, 1.0]
            break
            
        }
        let color = CGColor(colorSpace: colorSpace, components: components)
        return color!
    }
    
}
