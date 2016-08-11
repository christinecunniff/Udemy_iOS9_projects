//
//  ViewController.swift
//  RetroCalulator
//
//  Created by Christine Cunniff on 8/10/16.
//  Copyright © 2016 TonicDesign. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Equals = "="
        case Empty = "Empty"
    }

    @IBOutlet weak var outputLabel: UILabel!
    
    var btnSound: AVAudioPlayer!
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var currentOperation: Operation = Operation.Empty
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundURL = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundURL)
            btnSound.prepareToPlay()
        } catch let error as NSError {
            print(error.debugDescription)
        }
        
    }

    @IBAction func numberPressed(btn: UIButton!) {
        btnSound.play()
    }
    
    @IBAction func onDividePressed(sender: AnyObject) {
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
    }

    @IBAction func onSubtractPressed(sender: AnyObject) {
    }

    @IBAction func onAddPressed(sender: AnyObject) {
    }
    
    @IBAction func onEqualsPressed(sender: AnyObject) {
    }
    
}

