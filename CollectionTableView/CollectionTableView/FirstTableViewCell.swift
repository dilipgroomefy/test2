//
//  FirstTableViewCell.swift
//  CollectionTableView
//
//  Created by dilip kumar on 24/09/18.
//  Copyright © 2018 dilip kumar. All rights reserved.
//

import UIKit


protocol ButtonCellCallback {
    func buttonClicked(name: String)
}
class FirstTableViewCell: UITableViewCell {

    var buttonName:String!
    var buttonCellCallback:ButtonCellCallback!
    @IBOutlet weak var button: UIButton!
    @IBAction func buttonAction(_ sender: Any) {
        print("clicked ....\(button.tag)")
        buttonName = "B" + String(button.tag)
        if buttonCellCallback != nil {
        buttonCellCallback.buttonClicked(name: buttonName)
      }
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
