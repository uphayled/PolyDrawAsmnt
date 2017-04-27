//
//  ViewController.swift
//  PolyDraw
//
//  Created by Chris Chadillon on 2017-03-02.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func shapeChosen(_ sender: UISegmentedControl) {
        self.drawingView.shapeType = sender.selectedSegmentIndex
    }
    
    @IBOutlet weak var drawingView: DrawingView!
    @IBOutlet weak var currentShape: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //TODO: change undo so that it only is enabled when there are shapes
    @IBAction func Undo(_ sender: Any) {
        if(drawingView!.theShapes.count != 0 ){
            drawingView!.theShapes.removeLast()
            self.drawingView.setNeedsDisplay()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let theNext = segue.destination as! OptionsController
        
        theNext.shape = self.drawingView.shapeType
        
        
        
        
    }

}

