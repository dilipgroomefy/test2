//
//  ViewController.swift
//  TableViewDemo
//
//  Created by dilip kumar on 27/07/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var img:UIImage? = nil
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
//
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell:FirstTableViewCell = firstTableView.dequeueReusableCell(withIdentifier: "FirstTableViewCellm",  for: indexPath) as! FirstTableViewCell
        if indexPath.row < 5 {
            cell.label1.text = "Groomefy"
            cell.backgroundColor = UIColor.lightGray
            //cell.tintColor =  UIColor.blue
         }
        else{
            cell.label1.text = "abcd"
            cell.backgroundColor = UIColor.blue
        }
        if indexPath.row == 0 {
            cell.imgView.image = img
        }
        
        return cell

    }

    
    
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "FirstTableViewCell")
//
//        return cell
//    }

    @IBOutlet  var firstTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.firstTableView.delegate = self
        self.firstTableView.dataSource = self
        self.img = UIImage(named: "pic.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

