//
//  HomeViewController.swift
//  UserDefault
//
//  Created by dilip kumar on 05/09/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {


    @IBOutlet weak var buttonLogout: UIButton!
    @IBAction func buttonAction(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "ISUSERLOGEDIN")
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    @IBOutlet weak var labelUserName: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var userName = UserDefaults.standard.string(forKey: "USERNAME")
        labelUserName.text = "Hi " + userName!
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
