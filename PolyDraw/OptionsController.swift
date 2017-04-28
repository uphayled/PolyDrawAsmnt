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
    @IBOutlet weak var sampleArea: UIView!
    
    var saveTo:ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //lineColour.selectedSegmentIndex = shape!.lineColour
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func FillEnable(_ sender: Any) {
        if fillColour.isEnabled {
            fillColour.isEnabled = false
        }else{
            fillColour.isEnabled = true
        }
    }

    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func Save(_ sender: Any) {
        print(Int(lineWidth.value))
        print(Int(lineColour.selectedSegmentIndex))
        print(Int(fillColour.selectedSegmentIndex))
        //shape.lineWidth = Int(lineWidth.value)
        //shape.lineColour = Int(lineColour.selectedSegmentIndex)
        //shape.fillColour = Int(fillColour.selectedSegmentIndex)
        dismiss(animated: false, completion: nil)
        
    }
 
    @IBAction func widthChange(_ sender: Any) {
    }
    
    @IBAction func lColourChange(_ sender: Any) {
    }

    @IBAction func fColourChange(_ sender: Any) {
    }
    
    
    
}
