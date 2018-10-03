//
//  ViewController.swift
//  CustomView
//
//  Created by dilip kumar on 04/09/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var buttonFlag = false
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonAction(_ sender: Any){
    
        if buttonFlag{
            buttonFlag = false
            button.setTitle("bt", for: .normal)
        }
        else{
            buttonFlag = true
            button.setTitle("BT", for: .normal);
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

