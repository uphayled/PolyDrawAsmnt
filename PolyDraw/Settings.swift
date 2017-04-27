//
//  Settings.swift
//  PolyDraw
//
//  Created by Admin on 2017-04-26.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import Foundation

class Settings {
    var lineWidth:Int
    var lineColour:Int
    var fillColour:Int
    
    init (linewidth:Int = 0,linecolour:Int = 0,fillcolour:Int = 0) {
        self.lineWidth = linewidth
        self.lineColour = linecolour
        self.fillColour = fillcolour
    }
    
    
}
