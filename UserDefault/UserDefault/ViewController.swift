//
//  ViewController.swift
//  UserDefault
//
//  Created by dilip kumar on 05/09/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
// https://www.youtube.com/watch?v=golbLITIkok

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    
    @IBOutlet var buttonLogin: UIView!
    @IBAction func buttonLoginAction(_ sender: Any) {
        
        if textFieldUserName.text == "test" && textFieldPassword.text == "test" {
            
            UserDefaults.standard.set(true, forKey: "ISUSERLOGEDIN")
            UserDefaults.standard.set(textFieldUserName.text, forKey: "USERNAME")
             let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            self.navigationController?.pushViewController(homeViewController, animated: true)
        }
        else{
            print("failed!")
        }
        textFieldPassword.text = ""
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.bool(forKey: "ISUSERLOGEDIN")==true {
            let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            self.navigationController?.pushViewController(homeViewController, animated: true)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

