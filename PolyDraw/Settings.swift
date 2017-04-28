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
    
    init (linewidth:CGFloat = 0,linecolour:CGFloat = 0,fillEd:Bool = false,fillcolour:CGFloat = 0) {
        self.lineWidth = linewidth
        self.lineColour = linecolour
        self.filled = fillEd
        self.fillColour = fillcolour
    }
    
    
}
