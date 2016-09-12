//
//  ViewController.swift
//  Fav_Place_App
//
//  Created by Christine Cunniff on 9/12/16.
//  Copyright © 2016 TonicDesign. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moreButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreButton.layer.cornerRadius = 2.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

