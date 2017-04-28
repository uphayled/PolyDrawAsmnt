//
//  OptionsController.swift
//  PolyDraw
//
//  Created by Tardy, Alexander on 2017-04-21.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class OptionsController: UIViewController {

   
    @IBOutlet weak var lineWidth: UISlider!
    @IBOutlet weak var lineColour: UISegmentedControl!
    @IBOutlet weak var fillColour: UISegmentedControl!
    @IBOutlet weak var sampleArea: DrawingView!
    @IBOutlet weak var fillSwitch: UISwitch!
    
    var currentSettings:Settings = Settings()
    
    var saveTo:ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tempSettings = saveTo.drawingView.settings[saveTo.drawingView.shapeType]
        lineColour.selectedSegmentIndex = Int(tempSettings.lineColour)
        lineWidth.value = Float(tempSettings.lineWidth)
        
        if !tempSettings.filled{
            fillColour.isEnabled = false
            fillSwitch.isOn = false
        }
        fillColour.selectedSegmentIndex = Int(tempSettings.fillColour)
        
        print(tempSettings.filled)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func FillEnable(_ sender: Any) {
        if fillSwitch.isOn {
            fillColour.isEnabled = true
        }else{
            fillColour.isEnabled = false
        }
    }

    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func Save(_ sender: Any) {
        
        let temp = Settings(linewidth: CGFloat(lineWidth.value),linecolour: CGFloat(lineColour.selectedSegmentIndex),fillEd: fillSwitch.isOn,  fillcolour: CGFloat(fillColour.selectedSegmentIndex))
        saveTo.drawingView.settings[saveTo.drawingView.shapeType] = temp
        print(temp.filled)
        dismiss(animated: false, completion: nil)
        
    }
 
    func getSettings(){
        currentSettings = Settings(linewidth: CGFloat(lineWidth.value),linecolour: CGFloat(lineColour.selectedSegmentIndex),fillEd: fillSwitch.isOn,  fillcolour: CGFloat(fillColour.selectedSegmentIndex))
        
    }
    
    @IBAction func widthChange(_ sender: Any) {
        getSettings()
    }
    
    @IBAction func lColourChange(_ sender: Any) {
        getSettings()
    }

    @IBAction func fColourChange(_ sender: Any) {
        getSettings()
    }
    
    
    
}
