//
//  ViewController.swift
//  HelloMetal
//
//  Created by dilip kumar on 22/07/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
//

import UIKit
import Metal

class ViewController: UIViewController {

    
    var device: MTLDevice!
    var metalLayer: CAMetalLayer!
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        device = MTLCreateSystemDefaultDevice()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

