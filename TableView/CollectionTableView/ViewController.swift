//
//  ViewController.swift
//  CollectionTableView
//
//  Created by dilip kumar on 20/09/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,CellButtonClick {
    func buttonClick(name: String) {
        button2.setTitle(name, for: .normal)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:MyTableViewCell = myTableView.dequeueReusableCell(withIdentifier: "FirstTableViewCellm",  for: indexPath) as! MyTableViewCell
        cell.currentIndex = indexPath
        cell.cellDelegate = self
        cell.updateButtonUI(indexpath: indexPath)
        
        print(indexPath.row)
        return cell
    }
 
    @IBOutlet weak var myTableView: UITableView!
    
 
    
    
    
    @IBOutlet weak var button2: UIButton!
    @IBAction func button2(_ sender: Any) {
        
        myTableView.isHidden = !myTableView.isHidden
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button2.setTitle("B", for: .normal)
        
     }

    
    

}

