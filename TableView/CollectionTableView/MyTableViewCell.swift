//
//  MyTableViewCell.swift
//  CollectionTableView
//
//  Created by dilip kumar on 21/09/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
//

import UIKit

// @objc protocol CellButtonClick {
//     @objc optional func buttonClick(name: String)
//}

 protocol CellButtonClick {
    func buttonClick(name: String)
}

class MyTableViewCell: UITableViewCell {

    var currentIndex:IndexPath?
    var buttonClicked:Bool!
    
    var cellDelegate: CellButtonClick! = nil
    
    
    @IBOutlet weak var button: UIButton!
 
    @IBAction func buttonAction(_ sender: Any) {
        print("clicked..\(button.tag)")
        
        if cellDelegate != nil {
            cellDelegate.buttonClick(name: (button.titleLabel?.text)!)
        }
      // guard let <#constant#> = <#expression#> else { return <#return value#> }
        
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MyTableViewCell {
    func updateButtonUI(indexpath: IndexPath)  {
        self.button.tag = indexpath.row
        let strName = "B" + String(self.button.tag)
        self.button.setTitle(strName, for: .normal)
    }
}

extension CellButtonClick {
    func buttonClick(name: String){
        
    }
}
