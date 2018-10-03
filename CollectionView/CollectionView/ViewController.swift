//
//  ViewController.swift
//  CollectionView
//
//  Created by dilip kumar on 23/09/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:MyCollectionViewCell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionViewI", for: indexPath) as! MyCollectionViewCell
         if indexPath.row < 2 {
            cell.button.setTitle("B1", for: .normal)
            cell.backgroundColor = UIColor.green
        }
        else {
            cell.button.setTitle("C1", for: .normal)
        }
        print("index..\(indexPath.row)")
        return cell
        
    }
    @IBOutlet weak var myCollectionView: UICollectionView!
    
 
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

