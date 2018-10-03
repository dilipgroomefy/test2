//
//  ViewController.swift
//  CollectionTableView
//
//  Created by dilip kumar on 24/09/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource ,ButtonCellCallback{
    func buttonClicked(name: String) {
        button1.setTitle(name, for: .normal)
    }
    
    

    @IBOutlet weak var firstTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:FirstTableViewCell  = firstTableView.dequeueReusableCell(withIdentifier: "FirstTableViewCellm", for: indexPath) as! FirstTableViewCell
        print("index count  =  \(indexPath.row)")
        cell.button.tag = indexPath.row
        cell.backgroundColor = UIColor.gray
        return cell
    }
    
    @IBOutlet weak var button1: UIButton!
    @IBAction func button1Action(_ sender: Any) {
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

